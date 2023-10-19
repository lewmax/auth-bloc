import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utils/routing/app_routes.dart';
import 'core/constants/theme/app_colors.dart';
import 'generated/l10n.dart';
import 'src/splash/splash_main.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      ensureScreenSize: true,
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (context, _) => MaterialApp(
        title: 'MyCharger',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor:
                MediaQuery.of(context).textScaleFactor.clamp(0.75, 1.25),
          ),
          child: child ?? const SizedBox.shrink(),
        ),
        home: SplashMain(),
      ),
    );
  }
}
