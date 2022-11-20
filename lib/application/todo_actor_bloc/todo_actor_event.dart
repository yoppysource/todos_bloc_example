part of 'todo_actor_bloc.dart';

@freezed
class TodoActorEvent with _$TodoActorEvent {
  const factory TodoActorEvent.completionToggled(Todo todo) =
      _CompletionToggled;
  const factory TodoActorEvent.todoDeleted(Todo todo) = _TodoDeleted;
  const factory TodoActorEvent.undoDeletionRequested() = _UndoDeletionRequested;
  const factory TodoActorEvent.toggleAllRequested() = _ToggleAllRequested;
  const factory TodoActorEvent.clearCompletedRequested() =
      _ClearCompletedRequested;
}
