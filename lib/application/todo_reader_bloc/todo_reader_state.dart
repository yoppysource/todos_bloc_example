part of 'todo_reader_bloc.dart';

abstract class _LoadSuccessMixin {
  List<Todo> get todos;
  TodosViewFilter get filter;
  List<Todo> get filteredTodos => filter.applyAll(todos).toList();
}

@freezed
class TodoReaderState with _$TodoReaderState {
  const TodoReaderState._();
  const factory TodoReaderState.initial() = _Initial;
  const factory TodoReaderState.loadInProgress() = _LoadInProgress;

  @With<_LoadSuccessMixin>()
  factory TodoReaderState.loadSuccess(
      List<Todo> todos, TodosViewFilter filter) = _LoadSuccess;
  const factory TodoReaderState.loadFailure(String message) = _LoadFailure;
}
