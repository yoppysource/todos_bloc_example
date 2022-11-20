import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos_bloc_example/infra/todo_repository.dart';
import 'package:todos_bloc_example/models/todo.dart';

part 'todo_actor_event.dart';
part 'todo_actor_state.dart';
part 'todo_actor_bloc.freezed.dart';

class TodoActorBloc extends Bloc<TodoActorEvent, TodoActorState> {
  Todo? lastDeleted;
  final TodoRepository _todoRepository;
  TodoActorBloc({required todoRepository})
      : _todoRepository = todoRepository,
        super(const _Initial()) {
    on<_CompletionToggled>((event, emit) async {
      if (!event.todo.isCompleted) {
        Todo todo = event.todo.copyWith(isCompleted: true);
        emit(const TodoActorState.actionInProgress());
        await _todoRepository.saveTodo(todo);
        emit(const TodoActorState.actionSuccess());
      }
    });

    on<_TodoDeleted>((event, emit) async {
      emit(const TodoActorState.actionInProgress());
      await _todoRepository.deleteTodo(event.todo.id);
      lastDeleted = event.todo;
      emit(const TodoActorState.deleteSuccess());
    });
    on<_UndoDeletionRequested>((event, emit) async {
      if (lastDeleted != null) {
        emit(const TodoActorState.actionInProgress());
        await _todoRepository.saveTodo(lastDeleted!);
        emit(const TodoActorState.actionSuccess());
      }
    });
    on<_ToggleAllRequested>((event, emit) async {
      emit(const TodoActorState.actionInProgress());
      await _todoRepository.completeAll(isCompleted: true);
      emit(const TodoActorState.actionSuccess());
    });
    on<_ClearCompletedRequested>((event, emit) async {
      emit(const TodoActorState.actionInProgress());
      await _todoRepository.clearCompleted();
      emit(const TodoActorState.actionSuccess());
    });
  }
}
