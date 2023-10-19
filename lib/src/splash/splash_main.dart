import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/routing/app_routes.dart';
import '../../core/utils/routing/global_navigator.dart';
import '../../data/network/repos/auth_repository.dart';
import '../../data/network/repos/social_login_repository.dart';
import '../../data/network/repos/user_repository.dart';
import '../../data/network/service/api_constants.dart';
import '../../data/network/service/api_service.dart';
import '../../services/auth_bloc/auth_bloc.dart';
import '../../services/auth_storage_service.dart';
import '../../services/storage_service.dart';
import '../auth/confirmed/confirmed_screen.dart';
import '../auth/create_account/create_account.dart';
import '../auth/create_password/create_password_screen.dart';
import '../auth/forgot_password/forgot_password_screen.dart';
import '../auth/initial/initial_screen.dart';
import '../auth/sign_in/sign_in_screen.dart';
import '../auth/sign_up/sign_up_screen.dart';
import '../auth/verification/verification_screen.dart';
import '../home/home_main.dart';
import 'splash_screen.dart';

class SplashMain extends StatelessWidget {
  SplashMain({super.key});

  final _storageService = StorageService();
  late final _authStorageService =
      AuthStorageService(storageService: _storageService);
  late final _apiService =
      ApiService(ApiConstants.baseUrl, authStorageService: _authStorageService);
  late final IAuthRepository _authRepository = AuthRepositoryImpl(_apiService);
  late final IUserRepository _userRepository = UserRepositoryImpl(_apiService);
  final _socialAuthRepository = SocialAuthRepository();
  late final _authBloc = AuthBloc(
    apiService: _apiService,
    authRepository: _authRepository,
    userRepository: _userRepository,
    authStorageService: _authStorageService,
    socialAuthRepository: _socialAuthRepository,
  );

  final _navigator = GlobalNavigator();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (AppRoutes.mainNavigator.currentState?.canPop() ?? false) {
          AppRoutes.mainNavigator.currentState?.maybePop();

          return false;
        }

        return true;
      },
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (_) => _storageService),
          RepositoryProvider(create: (_) => _authStorageService),
          RepositoryProvider(create: (_) => _apiService),
          RepositoryProvider(create: (_) => _authRepository),
          RepositoryProvider(create: (_) => _userRepository),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AuthBloc>(create: (_) => _authBloc),
          ],
          child: BlocListener<AuthBloc, AuthState>(
            listener: (_, state) async {
              _navigator.popDialogs();
              state.map(
                notAuth: (_) => _navigator.pushNamedAndRemoveUntil(
                  AppRoutes.authInitital,
                ),
                auth: (_) => _navigator.pushNamedAndRemoveUntil(AppRoutes.home),
                authWithoutRegister: (_) => _navigator.pushNamedAndRemoveUntil(
                  AppRoutes.createAccount,
                ),
                inProgress: (_) => _navigator.showLoadingDialog(),
                error: (error) =>
                    _navigator.errorDialog(error.message ?? 'Error happened'),
                initial: (_) => null,
              );
            },
            child: Navigator(
              key: AppRoutes.mainNavigator,
              initialRoute: AppRoutes.root,
              onGenerateRoute: (settings) {
                return switch (settings.name) {
                  AppRoutes.splash || AppRoutes.root => MaterialPageRoute(
                      builder: (_) => const SplashScreen(),
                      settings: settings,
                    ),
                  AppRoutes.authInitital => MaterialPageRoute(
                      builder: (_) => const InitialScreen(),
                      settings: settings,
                    ),
                  AppRoutes.home => MaterialPageRoute(
                      builder: (_) => const HomeMain(),
                      settings: settings,
                    ),
                  AppRoutes.createAccount => MaterialPageRoute(
                      builder: (_) => const CreateAccount(),
                      settings: settings,
                    ),
                  AppRoutes.signIn => MaterialPageRoute(
                      builder: (_) => const SignInScreen(),
                      settings: settings,
                    ),
                  AppRoutes.signUp => MaterialPageRoute(
                      builder: (_) => const SignUpScreen(),
                      settings: settings,
                    ),
                  AppRoutes.forgotPassword => MaterialPageRoute(
                      builder: (_) => const ForgotPasswordScreen(),
                      settings: settings,
                    ),
                  AppRoutes.createPassword => MaterialPageRoute(
                      builder: (_) => const CreatePasswordScreen(),
                      settings: settings,
                    ),
                  AppRoutes.verification => MaterialPageRoute(
                      builder: (_) => const VerificationScreen(),
                      settings: settings,
                    ),
                  AppRoutes.confirmed => MaterialPageRoute(
                      builder: (_) => const ConfirmedScreen(),
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
