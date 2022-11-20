import 'package:flutter/widgets.dart';
import 'package:todos_bloc_example/bootstrap.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todos_bloc_example/infra/todo_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final todosApi = TodoRepository(
    plugin: await SharedPreferences.getInstance(),
  );

  bootstrap(todosApi: todosApi);
}
