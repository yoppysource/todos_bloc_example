import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos_bloc_example/infra/todo_repository.dart';
import 'package:todos_bloc_example/models/todo.dart';
import 'package:todos_bloc_example/models/todos_view_filter.dart';

part 'todo_watcher_event.dart';
part 'todo_watcher_state.dart';
part 'todo_watcher_bloc.freezed.dart';

class TodoWatcherBloc extends Bloc<TodoWatcherEvent, TodoWatcherState> {
  final TodoRepository _todoRepository;

  StreamSubscription<List<Todo>>? _todoStreamSubscription;
  TodoWatcherBloc({
    required todoRepository,
  })  : _todoRepository = todoRepository,
        super(const _Initial()) {
    on<_Started>((event, emit) async {
      const TodoWatcherState.loadInProgress();
      await _todoStreamSubscription?.cancel();
      _todoStreamSubscription = _todoRepository.getTodos().listen(
            (List<Todo> todos) => add(TodoWatcherEvent.todosReceived(todos)),
            onError: (e) => TodoWatcherState.loadFailure(e.toString()),
          );
    });

    on<_FilterChanged>((event, emit) => state.mapOrNull(
        loadSuccess: (state) => emit(state.copyWith(filter: event.filter))));
    on<_TodosReceived>((event, emit) {
      state.maybeMap(
        loadSuccess: (state) => emit(state.copyWith(todos: event.todos)),
        orElse: () => emit(
            TodoWatcherState.loadSuccess(event.todos, TodosViewFilter.all)),
      );
    });
  }

  @override
  Future<void> close() async {
    await _todoStreamSubscription?.cancel();
    return super.close();
  }
}
