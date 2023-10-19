import 'package:flutter/material.dart';

abstract class AppRoutes {
  static final mainNavigator = GlobalKey<NavigatorState>();
  static final homeNavigator = GlobalKey<NavigatorState>();

  static const root = '/';
  static const splash = '/splash';
  static const home = '/home';

  //auth
  static const authInitital = '/authInitital';
  static const createAccount = '/createAccount';
  static const signUp = '/signUp';
  static const signIn = '/signIn';
  static const forgotPassword = '/forgotPassword';
  static const verification = '/verification';
  static const createPassword = '/createPassword';
  static const confirmed = '/confirmed';
}
