import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_bloc_example/infra/local_storage_todos_api.dart';
import 'package:todos_bloc_example/l10n/l10n.dart';
import 'package:todos_bloc_example/presentation/home_page.dart';
import 'package:todos_bloc_example/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key, required this.todosRepository});

  final LocalStorageTodosApi todosRepository;

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
    return MaterialApp(
      theme: FlutterTodosTheme.light,
      darkTheme: FlutterTodosTheme.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
