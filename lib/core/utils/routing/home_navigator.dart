import 'package:flutter/material.dart';
import 'package:overlay_dialog/overlay_dialog.dart';

import '../../constants/theme/app_colors.dart';
import 'app_routes.dart';
import 'my_navigator_base.dart';

class HomeNavigator extends MyNavigatorBase {
  @override
  Future<Object?>? pushNamedAndRemoveUntil(String route, {Object? args}) {
    return AppRoutes.homeNavigator.currentState
        ?.pushNamedAndRemoveUntil(route, (route) => false, arguments: args);
  }

  @override
  Future<Object?>? pushReplacementNamed(String route, {Object? args}) {
    return AppRoutes.homeNavigator.currentState
        ?.pushReplacementNamed(route, arguments: args);
  }

  @override
  void pop() {
    return AppRoutes.homeNavigator.currentState?.pop();
  }

  @override
  Future<Object?>? pushNamed(String route, {Object? args}) async {
    return Navigator.of(AppRoutes.homeNavigator.currentContext!)
        .pushNamed(route, arguments: args);
  }

  @override
  Future<Object?>? push(Widget widget) async {
    return AppRoutes.homeNavigator.currentState
        ?.push(MaterialPageRoute(builder: (_) => widget));
  }

  @override
  void popDialogs() {
    DialogHelper().hideImmediate(AppRoutes.homeNavigator.currentContext!);
  }

  @override
  void popUntil(String routeName) {
    return AppRoutes.homeNavigator.currentState?.popUntil((route) {
      return route.settings.name == routeName;
    });
  }

  @override
  Future<dynamic> showDialog(Widget widget) async {
    DialogHelper().show(
      AppRoutes.homeNavigator.currentContext!,
      DialogWidget.custom(child: widget),
    );
  }

  @override
  Future<dynamic> showLoadingDialog() async {
    DialogHelper().show(
      AppRoutes.homeNavigator.currentContext!,
      DialogWidget.custom(
        closable: false,
        child: const CircularProgressIndicator(color: AppColors.primary),
      ),
    );
  }

  @override
  void errorDialog(String message) {
    ScaffoldMessenger.of(AppRoutes.homeNavigator.currentContext!).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: AppColors.redBg),
    );
  }
}
