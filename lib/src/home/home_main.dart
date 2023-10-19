import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/routing/app_routes.dart';
import '../../core/utils/routing/home_navigator.dart';
import '../../data/network/repos/user_repository.dart';
import '../../services/user_bloc/user_bloc.dart';
import '../splash/splash_screen.dart';
import 'home_screen/home_screen.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = HomeNavigator();

    return WillPopScope(
      onWillPop: () async {
        if (AppRoutes.homeNavigator.currentState?.canPop() ?? false) {
          AppRoutes.homeNavigator.currentState?.maybePop();

          return false;
        }

        return true;
      },
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (_) => UserRepositoryImpl(context.read())),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider<UserBloc>(
              create: (_) => UserBloc(
                userRepository: context.read(),
                authBloc: context.read(),
              ),
            ),
          ],
          child: MultiBlocListener(
            listeners: [
              BlocListener<UserBloc, UserState>(
                listenWhen: (prev, curr) => curr.maybeMap(
                  orElse: () => true,
                  success: (value) => prev.user == null,
                ),
                listener: (_, state) => state.map(
                  initial: (state) => null,
                  inProgress: (state) => navigator.showLoadingDialog(),
                  success: (state) =>
                      navigator.pushReplacementNamed(AppRoutes.home),
                  error: (state) => navigator.errorDialog(state.message),
                ),
              ),
            ],
            child: Navigator(
              key: AppRoutes.homeNavigator,
              initialRoute: AppRoutes.root,
              onGenerateRoute: (settings) {
                return switch (settings.name) {
                  AppRoutes.root || AppRoutes.splash => MaterialPageRoute(
                      builder: (_) => const SplashScreen(),
                      settings: settings,
                    ),
                  AppRoutes.home => MaterialPageRoute(
                      builder: (_) => const HomeScreen(),
                      settings: settings,
                    ),
                  _ => throw Exception('Wrong route'),
                };
              },
            ),
          ),
        ),
      ),
    );
  }
}
