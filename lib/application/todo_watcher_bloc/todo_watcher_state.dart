part of 'todo_watcher_bloc.dart';

abstract class _LoadSuccessMixin {
  List<Todo> get todos;
  TodosViewFilter get filter;
  List<Todo> get filteredTodos => filter.applyAll(todos).toList();
}

@freezed
class TodoWatcherState with _$TodoWatcherState {
  const factory TodoWatcherState.initial() = _Initial;
  const factory TodoWatcherState.loadInProgress() = _LoadInProgress;
  @With<_LoadSuccessMixin>()
  const factory TodoWatcherState.loadSuccess(
      List<Todo> todos, TodosViewFilter filter) = _LoadSuccess;
  const factory TodoWatcherState.loadFailure(String message) = _LoadFailure;
}
