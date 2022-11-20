import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todos_bloc_example/models/todo.dart';

class TodoRepository {
  TodoRepository({
    required SharedPreferences plugin,
  }) : _plugin = plugin;

  final SharedPreferences _plugin;

  static const kTodosCollectionKey = '__todos_collection_key__';

  String? _getValue(String key) => _plugin.getString(key);

  Future<void> _setValue(String key, String value) =>
      _plugin.setString(key, value);

  List<Todo> getTodos() {
    final todosJson = _getValue(kTodosCollectionKey);
    if (todosJson != null) {
      final todos = List<Map<dynamic, dynamic>>.from(
        json.decode(todosJson) as List,
      )
          .map((jsonMap) => Todo.fromJson(Map<String, dynamic>.from(jsonMap)))
          .toList();
      return todos;
    } else {
      return [];
    }
  }

  Future<void> saveTodo(Todo todo) {
    List<Todo> todoList = getTodos();
    final todoIndex = todoList.indexWhere((t) => t.id == todo.id);
    if (todoIndex >= 0) {
      todoList[todoIndex] = todo;
    } else {
      todoList.add(todo);
    }

    return _setValue(kTodosCollectionKey, json.encode(todoList));
  }

  Future<void> deleteTodo(String id) async {
    List<Todo> todoList = getTodos();
    final todoIndex = todoList.indexWhere((t) => t.id == id);
    if (todoIndex == -1) {
      throw Error();
    } else {
      todoList.removeAt(todoIndex);
      return _setValue(kTodosCollectionKey, json.encode(todoList));
    }
  }

  Future<int> clearCompleted() async {
    List<Todo> todoList = getTodos();

    final completedTodosAmount = todoList.where((t) => t.isCompleted).length;
    todoList.removeWhere((t) => t.isCompleted);
    await _setValue(kTodosCollectionKey, json.encode(todoList));
    return completedTodosAmount;
  }

  Future<int> completeAll({required bool isCompleted}) async {
    List<Todo> todoList = getTodos();

    final changedTodosAmount =
        todoList.where((t) => t.isCompleted != isCompleted).length;
    final newTodoList = [
      for (final todo in todoList) todo.copyWith(isCompleted: isCompleted)
    ];
    await _setValue(kTodosCollectionKey, json.encode(newTodoList));
    return changedTodosAmount;
  }
}
