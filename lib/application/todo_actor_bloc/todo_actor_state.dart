part of 'todo_actor_bloc.dart';

@freezed
class TodoActorState with _$TodoActorState {
  const factory TodoActorState.initial() = _Initial;
  const factory TodoActorState.actionInProgress() = _LoadInProgress;
  const factory TodoActorState.actionSuccess(List<Todo> todos) = _LoadSuccess;
  const factory TodoActorState.deleteSuccess(List<Todo> todos) = _DeleteSuccess;
  const factory TodoActorState.actionFailure(String message) = _LoadFailure;
}
