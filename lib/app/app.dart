import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_bloc_example/application/todo_actor_bloc/todo_actor_bloc.dart';
import 'package:todos_bloc_example/application/todo_watcher_bloc/todo_watcher_bloc.dart';
import 'package:todos_bloc_example/infra/todo_repository.dart';
import 'package:todos_bloc_example/l10n/l10n.dart';
import 'package:todos_bloc_example/presentation/home_page.dart';
import 'package:todos_bloc_example/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key, required this.todosRepository});

  final TodoRepository todosRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: todosRepository,
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoActorBloc>(
          create: (context) =>
              TodoActorBloc(todoRepository: context.read<TodoRepository>()),
        ),
        BlocProvider<TodoWatcherBloc>(
          create: (context) =>
              TodoWatcherBloc(todoRepository: context.read<TodoRepository>())
                ..add(const TodoWatcherEvent.started()),
        )
      ],
      child: MaterialApp(
        theme: FlutterTodosTheme.light,
        darkTheme: FlutterTodosTheme.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const HomePage(),
      ),
    );
  }
}
