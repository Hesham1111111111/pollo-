import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log(
      '🟢 [onCreate] - ${bloc.runtimeType} created',
      name: 'App bloc state',
    );
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    if (change.currentState != change.nextState) {
      log(
        '🔄 [onChange] - ${bloc.runtimeType} state changed: '
        'from ${change.currentState} to ${change.nextState}',
        name: 'App bloc state',
      );
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log(
      '❌ [onError] - ${bloc.runtimeType} encountered an error: $error',
      name: 'App bloc state',
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log(
      '🔴 [onClose] - ${bloc.runtimeType} closed',
      name: 'App bloc state',
    );
  }
}
