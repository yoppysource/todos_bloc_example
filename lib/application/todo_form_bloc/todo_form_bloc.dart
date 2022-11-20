import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:todos_bloc_example/infra/todo_repository.dart';
import 'package:todos_bloc_example/models/todo.dart';

part 'todo_form_event.dart';
part 'todo_form_state.dart';
part 'todo_form_bloc.freezed.dart';

class TodoFormBloc extends Bloc<TodoFormEvent, TodoFormState> {
  final TodoRepository _todoRepository;
  Todo? initialTodo;

  TodoFormBloc({required todoRepository, this.initialTodo})
      : _todoRepository = todoRepository,
        super(initialTodo == null
            ? TodoFormState.initial()
            : TodoFormState.forEdit(initialTodo)) {
    on<_DescriptionEntered>(
      (event, emit) => emit(
        state.copyWith(
          description: event.enteredDescription,
          saveErrorMessageOrUpdatedTodosOption: none(),
        ),
      ),
    );
    on<_TitleEntered>(
      (event, emit) => emit(
        state.copyWith(
          title: event.enteredTitle,
          saveErrorMessageOrUpdatedTodosOption: none(),
        ),
      ),
    );
    on<_SaveRequested>((event, emit) async {
      emit(state.copyWith(
          isSaving: true, saveErrorMessageOrUpdatedTodosOption: none()));

      try {
        await _todoRepository.saveTodo(Todo(
          id: state.editTodo != null ? state.editTodo!.id : null,
          title: state.title,
          description: state.description,
        ));

        emit(state.copyWith(
          isSaving: true,
          saveErrorMessageOrUpdatedTodosOption:
              optionOf(right(_todoRepository.getTodos())),
        ));
      } catch (e) {
        emit(state.copyWith(
          isSaving: true,
          saveErrorMessageOrUpdatedTodosOption: optionOf(left("error occur")),
        ));
      }
    });
  }
}
