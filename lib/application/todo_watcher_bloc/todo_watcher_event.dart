part of 'todo_watcher_bloc.dart';

@freezed
class TodoWatcherEvent with _$TodoWatcherEvent {
  const factory TodoWatcherEvent.started() = _Started;
  const factory TodoWatcherEvent.filterChanged(TodosViewFilter filter) =
      _FilterChanged;
  const factory TodoWatcherEvent.todosReceived(List<Todo> todos) =
      _TodosReceived;
}
