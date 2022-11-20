import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos_bloc_example/infra/todo_repository.dart';
import 'package:todos_bloc_example/models/todo.dart';
import 'package:todos_bloc_example/models/todos_view_filter.dart';

part 'todo_reader_event.dart';
part 'todo_reader_state.dart';
part 'todo_reader_bloc.freezed.dart';

class TodoReaderBloc extends Bloc<TodoReaderEvent, TodoReaderState> {
  final TodoRepository _todosRepository;

  TodoReaderBloc({
    required TodoRepository todosRepository,
  })  : _todosRepository = todosRepository,
        super(const TodoReaderState.initial()) {
    on<_TodoRequested>((event, emit) {
      emit(const TodoReaderState.loadInProgress());
      List<Todo> todos = _todosRepository.getTodos();
      emit(TodoReaderState.loadSuccess(todos, TodosViewFilter.all));
    });
    on<_FilterChanged>((event, emit) {
      if (state is _LoadSuccess) {
        _LoadSuccess currentState = (state as _LoadSuccess);
        emit(currentState.copyWith(
          todos: currentState.todos,
          filter: event.filter,
        ));
      }
    });
    on<_TodoUpdated>((event, emit) {
      if (state is _LoadSuccess) {
        _LoadSuccess currentState = (state as _LoadSuccess);
        emit(currentState.copyWith(
          todos: event.todos,
          filter: currentState.filter,
        ));
      }
    });
  }
}
