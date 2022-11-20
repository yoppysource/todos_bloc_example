// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String enteredTitle) titleEntered,
    required TResult Function(String enteredDescription) descriptionEntered,
    required TResult Function() saveRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String enteredTitle)? titleEntered,
    TResult? Function(String enteredDescription)? descriptionEntered,
    TResult? Function()? saveRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String enteredTitle)? titleEntered,
    TResult Function(String enteredDescription)? descriptionEntered,
    TResult Function()? saveRequsted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleEntered value) titleEntered,
    required TResult Function(_DescriptionEntered value) descriptionEntered,
    required TResult Function(_SaveRequested value) saveRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TitleEntered value)? titleEntered,
    TResult? Function(_DescriptionEntered value)? descriptionEntered,
    TResult? Function(_SaveRequested value)? saveRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleEntered value)? titleEntered,
    TResult Function(_DescriptionEntered value)? descriptionEntered,
    TResult Function(_SaveRequested value)? saveRequsted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoFormEventCopyWith<$Res> {
  factory $TodoFormEventCopyWith(
          TodoFormEvent value, $Res Function(TodoFormEvent) then) =
      _$TodoFormEventCopyWithImpl<$Res, TodoFormEvent>;
}

/// @nodoc
class _$TodoFormEventCopyWithImpl<$Res, $Val extends TodoFormEvent>
    implements $TodoFormEventCopyWith<$Res> {
  _$TodoFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TitleEnteredCopyWith<$Res> {
  factory _$$_TitleEnteredCopyWith(
          _$_TitleEntered value, $Res Function(_$_TitleEntered) then) =
      __$$_TitleEnteredCopyWithImpl<$Res>;
  @useResult
  $Res call({String enteredTitle});
}

/// @nodoc
class __$$_TitleEnteredCopyWithImpl<$Res>
    extends _$TodoFormEventCopyWithImpl<$Res, _$_TitleEntered>
    implements _$$_TitleEnteredCopyWith<$Res> {
  __$$_TitleEnteredCopyWithImpl(
      _$_TitleEntered _value, $Res Function(_$_TitleEntered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enteredTitle = null,
  }) {
    return _then(_$_TitleEntered(
      null == enteredTitle
          ? _value.enteredTitle
          : enteredTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleEntered implements _TitleEntered {
  const _$_TitleEntered(this.enteredTitle);

  @override
  final String enteredTitle;

  @override
  String toString() {
    return 'TodoFormEvent.titleEntered(enteredTitle: $enteredTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleEntered &&
            (identical(other.enteredTitle, enteredTitle) ||
                other.enteredTitle == enteredTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enteredTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleEnteredCopyWith<_$_TitleEntered> get copyWith =>
      __$$_TitleEnteredCopyWithImpl<_$_TitleEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String enteredTitle) titleEntered,
    required TResult Function(String enteredDescription) descriptionEntered,
    required TResult Function() saveRequsted,
  }) {
    return titleEntered(enteredTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String enteredTitle)? titleEntered,
    TResult? Function(String enteredDescription)? descriptionEntered,
    TResult? Function()? saveRequsted,
  }) {
    return titleEntered?.call(enteredTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String enteredTitle)? titleEntered,
    TResult Function(String enteredDescription)? descriptionEntered,
    TResult Function()? saveRequsted,
    required TResult orElse(),
  }) {
    if (titleEntered != null) {
      return titleEntered(enteredTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleEntered value) titleEntered,
    required TResult Function(_DescriptionEntered value) descriptionEntered,
    required TResult Function(_SaveRequested value) saveRequsted,
  }) {
    return titleEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TitleEntered value)? titleEntered,
    TResult? Function(_DescriptionEntered value)? descriptionEntered,
    TResult? Function(_SaveRequested value)? saveRequsted,
  }) {
    return titleEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleEntered value)? titleEntered,
    TResult Function(_DescriptionEntered value)? descriptionEntered,
    TResult Function(_SaveRequested value)? saveRequsted,
    required TResult orElse(),
  }) {
    if (titleEntered != null) {
      return titleEntered(this);
    }
    return orElse();
  }
}

abstract class _TitleEntered implements TodoFormEvent {
  const factory _TitleEntered(final String enteredTitle) = _$_TitleEntered;

  String get enteredTitle;
  @JsonKey(ignore: true)
  _$$_TitleEnteredCopyWith<_$_TitleEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DescriptionEnteredCopyWith<$Res> {
  factory _$$_DescriptionEnteredCopyWith(_$_DescriptionEntered value,
          $Res Function(_$_DescriptionEntered) then) =
      __$$_DescriptionEnteredCopyWithImpl<$Res>;
  @useResult
  $Res call({String enteredDescription});
}

/// @nodoc
class __$$_DescriptionEnteredCopyWithImpl<$Res>
    extends _$TodoFormEventCopyWithImpl<$Res, _$_DescriptionEntered>
    implements _$$_DescriptionEnteredCopyWith<$Res> {
  __$$_DescriptionEnteredCopyWithImpl(
      _$_DescriptionEntered _value, $Res Function(_$_DescriptionEntered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enteredDescription = null,
  }) {
    return _then(_$_DescriptionEntered(
      null == enteredDescription
          ? _value.enteredDescription
          : enteredDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionEntered implements _DescriptionEntered {
  const _$_DescriptionEntered(this.enteredDescription);

  @override
  final String enteredDescription;

  @override
  String toString() {
    return 'TodoFormEvent.descriptionEntered(enteredDescription: $enteredDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionEntered &&
            (identical(other.enteredDescription, enteredDescription) ||
                other.enteredDescription == enteredDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enteredDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescriptionEnteredCopyWith<_$_DescriptionEntered> get copyWith =>
      __$$_DescriptionEnteredCopyWithImpl<_$_DescriptionEntered>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String enteredTitle) titleEntered,
    required TResult Function(String enteredDescription) descriptionEntered,
    required TResult Function() saveRequsted,
  }) {
    return descriptionEntered(enteredDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String enteredTitle)? titleEntered,
    TResult? Function(String enteredDescription)? descriptionEntered,
    TResult? Function()? saveRequsted,
  }) {
    return descriptionEntered?.call(enteredDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String enteredTitle)? titleEntered,
    TResult Function(String enteredDescription)? descriptionEntered,
    TResult Function()? saveRequsted,
    required TResult orElse(),
  }) {
    if (descriptionEntered != null) {
      return descriptionEntered(enteredDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleEntered value) titleEntered,
    required TResult Function(_DescriptionEntered value) descriptionEntered,
    required TResult Function(_SaveRequested value) saveRequsted,
  }) {
    return descriptionEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TitleEntered value)? titleEntered,
    TResult? Function(_DescriptionEntered value)? descriptionEntered,
    TResult? Function(_SaveRequested value)? saveRequsted,
  }) {
    return descriptionEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleEntered value)? titleEntered,
    TResult Function(_DescriptionEntered value)? descriptionEntered,
    TResult Function(_SaveRequested value)? saveRequsted,
    required TResult orElse(),
  }) {
    if (descriptionEntered != null) {
      return descriptionEntered(this);
    }
    return orElse();
  }
}

abstract class _DescriptionEntered implements TodoFormEvent {
  const factory _DescriptionEntered(final String enteredDescription) =
      _$_DescriptionEntered;

  String get enteredDescription;
  @JsonKey(ignore: true)
  _$$_DescriptionEnteredCopyWith<_$_DescriptionEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveRequestedCopyWith<$Res> {
  factory _$$_SaveRequestedCopyWith(
          _$_SaveRequested value, $Res Function(_$_SaveRequested) then) =
      __$$_SaveRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveRequestedCopyWithImpl<$Res>
    extends _$TodoFormEventCopyWithImpl<$Res, _$_SaveRequested>
    implements _$$_SaveRequestedCopyWith<$Res> {
  __$$_SaveRequestedCopyWithImpl(
      _$_SaveRequested _value, $Res Function(_$_SaveRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveRequested implements _SaveRequested {
  const _$_SaveRequested();

  @override
  String toString() {
    return 'TodoFormEvent.saveRequsted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String enteredTitle) titleEntered,
    required TResult Function(String enteredDescription) descriptionEntered,
    required TResult Function() saveRequsted,
  }) {
    return saveRequsted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String enteredTitle)? titleEntered,
    TResult? Function(String enteredDescription)? descriptionEntered,
    TResult? Function()? saveRequsted,
  }) {
    return saveRequsted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String enteredTitle)? titleEntered,
    TResult Function(String enteredDescription)? descriptionEntered,
    TResult Function()? saveRequsted,
    required TResult orElse(),
  }) {
    if (saveRequsted != null) {
      return saveRequsted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleEntered value) titleEntered,
    required TResult Function(_DescriptionEntered value) descriptionEntered,
    required TResult Function(_SaveRequested value) saveRequsted,
  }) {
    return saveRequsted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TitleEntered value)? titleEntered,
    TResult? Function(_DescriptionEntered value)? descriptionEntered,
    TResult? Function(_SaveRequested value)? saveRequsted,
  }) {
    return saveRequsted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleEntered value)? titleEntered,
    TResult Function(_DescriptionEntered value)? descriptionEntered,
    TResult Function(_SaveRequested value)? saveRequsted,
    required TResult orElse(),
  }) {
    if (saveRequsted != null) {
      return saveRequsted(this);
    }
    return orElse();
  }
}

abstract class _SaveRequested implements TodoFormEvent {
  const factory _SaveRequested() = _$_SaveRequested;
}

/// @nodoc
mixin _$TodoFormState {
  Todo? get editTodo => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Option<Either<String, List<Todo>>> get saveErrorMessageOrUpdatedTodosOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoFormStateCopyWith<TodoFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoFormStateCopyWith<$Res> {
  factory $TodoFormStateCopyWith(
          TodoFormState value, $Res Function(TodoFormState) then) =
      _$TodoFormStateCopyWithImpl<$Res, TodoFormState>;
  @useResult
  $Res call(
      {Todo? editTodo,
      bool showErrorMessages,
      bool isSaving,
      String title,
      String description,
      Option<Either<String, List<Todo>>> saveErrorMessageOrUpdatedTodosOption});
}

/// @nodoc
class _$TodoFormStateCopyWithImpl<$Res, $Val extends TodoFormState>
    implements $TodoFormStateCopyWith<$Res> {
  _$TodoFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editTodo = freezed,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? title = null,
    Object? description = null,
    Object? saveErrorMessageOrUpdatedTodosOption = null,
  }) {
    return _then(_value.copyWith(
      editTodo: freezed == editTodo
          ? _value.editTodo
          : editTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      saveErrorMessageOrUpdatedTodosOption: null ==
              saveErrorMessageOrUpdatedTodosOption
          ? _value.saveErrorMessageOrUpdatedTodosOption
          : saveErrorMessageOrUpdatedTodosOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<Todo>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoFormStateCopyWith<$Res>
    implements $TodoFormStateCopyWith<$Res> {
  factory _$$_TodoFormStateCopyWith(
          _$_TodoFormState value, $Res Function(_$_TodoFormState) then) =
      __$$_TodoFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Todo? editTodo,
      bool showErrorMessages,
      bool isSaving,
      String title,
      String description,
      Option<Either<String, List<Todo>>> saveErrorMessageOrUpdatedTodosOption});
}

/// @nodoc
class __$$_TodoFormStateCopyWithImpl<$Res>
    extends _$TodoFormStateCopyWithImpl<$Res, _$_TodoFormState>
    implements _$$_TodoFormStateCopyWith<$Res> {
  __$$_TodoFormStateCopyWithImpl(
      _$_TodoFormState _value, $Res Function(_$_TodoFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editTodo = freezed,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? title = null,
    Object? description = null,
    Object? saveErrorMessageOrUpdatedTodosOption = null,
  }) {
    return _then(_$_TodoFormState(
      editTodo: freezed == editTodo
          ? _value.editTodo
          : editTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      saveErrorMessageOrUpdatedTodosOption: null ==
              saveErrorMessageOrUpdatedTodosOption
          ? _value.saveErrorMessageOrUpdatedTodosOption
          : saveErrorMessageOrUpdatedTodosOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<Todo>>>,
    ));
  }
}

/// @nodoc

class _$_TodoFormState implements _TodoFormState {
  const _$_TodoFormState(
      {required this.editTodo,
      required this.showErrorMessages,
      required this.isSaving,
      required this.title,
      required this.description,
      required this.saveErrorMessageOrUpdatedTodosOption});

  @override
  final Todo? editTodo;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final String title;
  @override
  final String description;
  @override
  final Option<Either<String, List<Todo>>> saveErrorMessageOrUpdatedTodosOption;

  @override
  String toString() {
    return 'TodoFormState(editTodo: $editTodo, showErrorMessages: $showErrorMessages, isSaving: $isSaving, title: $title, description: $description, saveErrorMessageOrUpdatedTodosOption: $saveErrorMessageOrUpdatedTodosOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoFormState &&
            (identical(other.editTodo, editTodo) ||
                other.editTodo == editTodo) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.saveErrorMessageOrUpdatedTodosOption,
                    saveErrorMessageOrUpdatedTodosOption) ||
                other.saveErrorMessageOrUpdatedTodosOption ==
                    saveErrorMessageOrUpdatedTodosOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editTodo, showErrorMessages,
      isSaving, title, description, saveErrorMessageOrUpdatedTodosOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoFormStateCopyWith<_$_TodoFormState> get copyWith =>
      __$$_TodoFormStateCopyWithImpl<_$_TodoFormState>(this, _$identity);
}

abstract class _TodoFormState implements TodoFormState {
  const factory _TodoFormState(
      {required final Todo? editTodo,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final String title,
      required final String description,
      required final Option<Either<String, List<Todo>>>
          saveErrorMessageOrUpdatedTodosOption}) = _$_TodoFormState;

  @override
  Todo? get editTodo;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  String get title;
  @override
  String get description;
  @override
  Option<Either<String, List<Todo>>> get saveErrorMessageOrUpdatedTodosOption;
  @override
  @JsonKey(ignore: true)
  _$$_TodoFormStateCopyWith<_$_TodoFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
