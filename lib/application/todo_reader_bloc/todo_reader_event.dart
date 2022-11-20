part of 'todo_reader_bloc.dart';

@freezed
class TodoReaderEvent with _$TodoReaderEvent {
  const factory TodoReaderEvent.todoRequested() = _TodoRequested;
  const factory TodoReaderEvent.filterChanged(TodosViewFilter filter) =
      _FilterChanged;
  const factory TodoReaderEvent.todoUpdated(List<Todo> todos) = _TodoUpdated;
}
