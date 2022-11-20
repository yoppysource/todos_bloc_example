part of 'todo_form_bloc.dart';

@freezed
class TodoFormState with _$TodoFormState {
  const factory TodoFormState({
    required Todo? editTodo,
    required bool showErrorMessages,
    required bool isSaving,
    required String title,
    required String description,
    required Option<Either<String, List<Todo>>>
        saveErrorMessageOrUpdatedTodosOption,
  }) = _TodoFormState;

  factory TodoFormState.initial() => TodoFormState(
      editTodo: null,
      showErrorMessages: false,
      title: "",
      description: "",
      isSaving: false,
      saveErrorMessageOrUpdatedTodosOption: none());

  factory TodoFormState.forEdit(Todo todo) => TodoFormState(
      editTodo: todo,
      showErrorMessages: false,
      title: todo.title,
      description: todo.description,
      isSaving: false,
      saveErrorMessageOrUpdatedTodosOption: none());
}
