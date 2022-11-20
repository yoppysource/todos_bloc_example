part of 'todo_form_bloc.dart';

@freezed
class TodoFormEvent with _$TodoFormEvent {
  const factory TodoFormEvent.titleEntered(String enteredTitle) = _TitleEntered;
  const factory TodoFormEvent.descriptionEntered(String enteredDescription) =
      _DescriptionEntered;
  const factory TodoFormEvent.saveRequsted() = _SaveRequested;
}
