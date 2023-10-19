import 'package:flutter/material.dart';
import 'package:overlay_dialog/overlay_dialog.dart';

import '../../constants/theme/app_colors.dart';
import 'app_routes.dart';
import 'my_navigator_base.dart';

class GlobalNavigator extends MyNavigatorBase {
  @override
  Future<Object?>? pushNamedAndRemoveUntil(
    String route, {
    Object? args,
  }) {
    return AppRoutes.mainNavigator.currentState
        ?.pushNamedAndRemoveUntil(route, (route) => false, arguments: args);
  }

  @override
  Future<Object?>? pushReplacementNamed(String route, {Object? args}) {
    return AppRoutes.mainNavigator.currentState
        ?.pushReplacementNamed(route, arguments: args);
  }

  @override
  void pop() {
    return AppRoutes.mainNavigator.currentState?.pop();
  }

  @override
  Future<Object?>? pushNamed(String route, {Object? args}) async {
    return Navigator.of(AppRoutes.mainNavigator.currentContext!)
        .pushNamed(route, arguments: args);
  }

  @override
  Future<Object?>? push(Widget widget) async {
    return AppRoutes.mainNavigator.currentState
        ?.push(MaterialPageRoute(builder: (_) => widget));
  }

  @override
  void popDialogs() {
    DialogHelper().hideImmediate(AppRoutes.mainNavigator.currentContext!);
  }

  @override
  void popUntil(String routeName) {
    return AppRoutes.mainNavigator.currentState?.popUntil((route) {
      return route.settings.name == routeName;
    });
  }

  @override
  Future<dynamic> showDialog(Widget widget) async {
    DialogHelper().show(
      AppRoutes.mainNavigator.currentContext!,
      DialogWidget.custom(child: widget),
    );
  }

  @override
  Future<dynamic> showLoadingDialog() async {
    DialogHelper().show(
      AppRoutes.mainNavigator.currentContext!,
      DialogWidget.custom(
        closable: false,
        child: const CircularProgressIndicator(color: AppColors.primary),
      ),
    );
  }

  @override
  void errorDialog(String message) {
    ScaffoldMessenger.of(AppRoutes.mainNavigator.currentContext!).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.redBg,
      ),
    );
  }
}
