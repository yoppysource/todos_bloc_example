import 'package:flutter/widgets.dart';
import 'package:todos_bloc_example/bootstrap.dart';
import 'package:todos_bloc_example/infra/local_storage_todos_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final todosApi = LocalStorageTodosApi(
    plugin: await SharedPreferences.getInstance(),
  );

  bootstrap(todosApi: todosApi);
}
