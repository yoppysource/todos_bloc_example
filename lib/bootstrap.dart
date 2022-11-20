import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:todos_bloc_example/app/app.dart';
import 'package:todos_bloc_example/app/app_bloc_observer.dart';
import 'package:todos_bloc_example/infra/todo_repository.dart';

void bootstrap({required TodoRepository todosApi}) {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = AppBlocObserver();

  runZonedGuarded(
    () => runApp(App(todosRepository: todosApi)),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
