import 'package:flutter/material.dart';

import 'app_routes.dart';

abstract class MyNavigatorBase {
  //navigation
  Future<Object?>? push(Widget widget);
  Future<Object?>? pushNamed(String route, {Object? args});
  Future<Object?>? pushReplacementNamed(String route, {Object? args});
  Future<Object?>? pushNamedAndRemoveUntil(String route, {Object? args});
  void popUntil(String routeName);
  void pop();
  //dialog
  Future<dynamic> showDialog(Widget widget);
  Future<dynamic> showLoadingDialog();
  void errorDialog(String message);
  void popDialogs();
}
