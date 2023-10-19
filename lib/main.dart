import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'core/utils/app_logger.dart';

void main() => runZonedGuarded(
      () async {
        Bloc.observer = AppBlocObserver();
        Bloc.transformer = bloc_concurrency.sequential();
        runApp(App());
      },
      (error, stack) => AppLogger.log(error, stack),
    );

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    // AppLogger.logDebug('Event $event in $bloc');

    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    AppLogger.logDebug('Change in $bloc: $change');
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    AppLogger.log('Error in $bloc: $error', stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}
