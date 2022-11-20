// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) completionToggled,
    required TResult Function(Todo todo) todoDeleted,
    required TResult Function() undoDeletionRequested,
    required TResult Function() toggleAllRequested,
    required TResult Function() clearCompletedRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo todo)? completionToggled,
    TResult? Function(Todo todo)? todoDeleted,
    TResult? Function()? undoDeletionRequested,
    TResult? Function()? toggleAllRequested,
    TResult? Function()? clearCompletedRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? completionToggled,
    TResult Function(Todo todo)? todoDeleted,
    TResult Function()? undoDeletionRequested,
    TResult Function()? toggleAllRequested,
    TResult Function()? clearCompletedRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompletionToggled value) completionToggled,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_UndoDeletionRequested value)
        undoDeletionRequested,
    required TResult Function(_ToggleAllRequested value) toggleAllRequested,
    required TResult Function(_ClearCompletedRequested value)
        clearCompletedRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompletionToggled value)? completionToggled,
    TResult? Function(_TodoDeleted value)? todoDeleted,
    TResult? Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult? Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult? Function(_ClearCompletedRequested value)? clearCompletedRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompletionToggled value)? completionToggled,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult Function(_ClearCompletedRequested value)? clearCompletedRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoActorEventCopyWith<$Res> {
  factory $TodoActorEventCopyWith(
          TodoActorEvent value, $Res Function(TodoActorEvent) then) =
      _$TodoActorEventCopyWithImpl<$Res, TodoActorEvent>;
}

/// @nodoc
class _$TodoActorEventCopyWithImpl<$Res, $Val extends TodoActorEvent>
    implements $TodoActorEventCopyWith<$Res> {
  _$TodoActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CompletionToggledCopyWith<$Res> {
  factory _$$_CompletionToggledCopyWith(_$_CompletionToggled value,
          $Res Function(_$_CompletionToggled) then) =
      __$$_CompletionToggledCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});
}

/// @nodoc
class __$$_CompletionToggledCopyWithImpl<$Res>
    extends _$TodoActorEventCopyWithImpl<$Res, _$_CompletionToggled>
    implements _$$_CompletionToggledCopyWith<$Res> {
  __$$_CompletionToggledCopyWithImpl(
      _$_CompletionToggled _value, $Res Function(_$_CompletionToggled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$_CompletionToggled(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_CompletionToggled implements _CompletionToggled {
  const _$_CompletionToggled(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoActorEvent.completionToggled(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletionToggled &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompletionToggledCopyWith<_$_CompletionToggled> get copyWith =>
      __$$_CompletionToggledCopyWithImpl<_$_CompletionToggled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) completionToggled,
    required TResult Function(Todo todo) todoDeleted,
    required TResult Function() undoDeletionRequested,
    required TResult Function() toggleAllRequested,
    required TResult Function() clearCompletedRequested,
  }) {
    return completionToggled(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo todo)? completionToggled,
    TResult? Function(Todo todo)? todoDeleted,
    TResult? Function()? undoDeletionRequested,
    TResult? Function()? toggleAllRequested,
    TResult? Function()? clearCompletedRequested,
  }) {
    return completionToggled?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? completionToggled,
    TResult Function(Todo todo)? todoDeleted,
    TResult Function()? undoDeletionRequested,
    TResult Function()? toggleAllRequested,
    TResult Function()? clearCompletedRequested,
    required TResult orElse(),
  }) {
    if (completionToggled != null) {
      return completionToggled(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompletionToggled value) completionToggled,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_UndoDeletionRequested value)
        undoDeletionRequested,
    required TResult Function(_ToggleAllRequested value) toggleAllRequested,
    required TResult Function(_ClearCompletedRequested value)
        clearCompletedRequested,
  }) {
    return completionToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompletionToggled value)? completionToggled,
    TResult? Function(_TodoDeleted value)? todoDeleted,
    TResult? Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult? Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult? Function(_ClearCompletedRequested value)? clearCompletedRequested,
  }) {
    return completionToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompletionToggled value)? completionToggled,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult Function(_ClearCompletedRequested value)? clearCompletedRequested,
    required TResult orElse(),
  }) {
    if (completionToggled != null) {
      return completionToggled(this);
    }
    return orElse();
  }
}

abstract class _CompletionToggled implements TodoActorEvent {
  const factory _CompletionToggled(final Todo todo) = _$_CompletionToggled;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$_CompletionToggledCopyWith<_$_CompletionToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TodoDeletedCopyWith<$Res> {
  factory _$$_TodoDeletedCopyWith(
          _$_TodoDeleted value, $Res Function(_$_TodoDeleted) then) =
      __$$_TodoDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});
}

/// @nodoc
class __$$_TodoDeletedCopyWithImpl<$Res>
    extends _$TodoActorEventCopyWithImpl<$Res, _$_TodoDeleted>
    implements _$$_TodoDeletedCopyWith<$Res> {
  __$$_TodoDeletedCopyWithImpl(
      _$_TodoDeleted _value, $Res Function(_$_TodoDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$_TodoDeleted(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_TodoDeleted implements _TodoDeleted {
  const _$_TodoDeleted(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoActorEvent.todoDeleted(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoDeleted &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoDeletedCopyWith<_$_TodoDeleted> get copyWith =>
      __$$_TodoDeletedCopyWithImpl<_$_TodoDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) completionToggled,
    required TResult Function(Todo todo) todoDeleted,
    required TResult Function() undoDeletionRequested,
    required TResult Function() toggleAllRequested,
    required TResult Function() clearCompletedRequested,
  }) {
    return todoDeleted(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo todo)? completionToggled,
    TResult? Function(Todo todo)? todoDeleted,
    TResult? Function()? undoDeletionRequested,
    TResult? Function()? toggleAllRequested,
    TResult? Function()? clearCompletedRequested,
  }) {
    return todoDeleted?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? completionToggled,
    TResult Function(Todo todo)? todoDeleted,
    TResult Function()? undoDeletionRequested,
    TResult Function()? toggleAllRequested,
    TResult Function()? clearCompletedRequested,
    required TResult orElse(),
  }) {
    if (todoDeleted != null) {
      return todoDeleted(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompletionToggled value) completionToggled,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_UndoDeletionRequested value)
        undoDeletionRequested,
    required TResult Function(_ToggleAllRequested value) toggleAllRequested,
    required TResult Function(_ClearCompletedRequested value)
        clearCompletedRequested,
  }) {
    return todoDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompletionToggled value)? completionToggled,
    TResult? Function(_TodoDeleted value)? todoDeleted,
    TResult? Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult? Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult? Function(_ClearCompletedRequested value)? clearCompletedRequested,
  }) {
    return todoDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompletionToggled value)? completionToggled,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult Function(_ClearCompletedRequested value)? clearCompletedRequested,
    required TResult orElse(),
  }) {
    if (todoDeleted != null) {
      return todoDeleted(this);
    }
    return orElse();
  }
}

abstract class _TodoDeleted implements TodoActorEvent {
  const factory _TodoDeleted(final Todo todo) = _$_TodoDeleted;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$_TodoDeletedCopyWith<_$_TodoDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UndoDeletionRequestedCopyWith<$Res> {
  factory _$$_UndoDeletionRequestedCopyWith(_$_UndoDeletionRequested value,
          $Res Function(_$_UndoDeletionRequested) then) =
      __$$_UndoDeletionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UndoDeletionRequestedCopyWithImpl<$Res>
    extends _$TodoActorEventCopyWithImpl<$Res, _$_UndoDeletionRequested>
    implements _$$_UndoDeletionRequestedCopyWith<$Res> {
  __$$_UndoDeletionRequestedCopyWithImpl(_$_UndoDeletionRequested _value,
      $Res Function(_$_UndoDeletionRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UndoDeletionRequested implements _UndoDeletionRequested {
  const _$_UndoDeletionRequested();

  @override
  String toString() {
    return 'TodoActorEvent.undoDeletionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UndoDeletionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) completionToggled,
    required TResult Function(Todo todo) todoDeleted,
    required TResult Function() undoDeletionRequested,
    required TResult Function() toggleAllRequested,
    required TResult Function() clearCompletedRequested,
  }) {
    return undoDeletionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo todo)? completionToggled,
    TResult? Function(Todo todo)? todoDeleted,
    TResult? Function()? undoDeletionRequested,
    TResult? Function()? toggleAllRequested,
    TResult? Function()? clearCompletedRequested,
  }) {
    return undoDeletionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? completionToggled,
    TResult Function(Todo todo)? todoDeleted,
    TResult Function()? undoDeletionRequested,
    TResult Function()? toggleAllRequested,
    TResult Function()? clearCompletedRequested,
    required TResult orElse(),
  }) {
    if (undoDeletionRequested != null) {
      return undoDeletionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompletionToggled value) completionToggled,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_UndoDeletionRequested value)
        undoDeletionRequested,
    required TResult Function(_ToggleAllRequested value) toggleAllRequested,
    required TResult Function(_ClearCompletedRequested value)
        clearCompletedRequested,
  }) {
    return undoDeletionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompletionToggled value)? completionToggled,
    TResult? Function(_TodoDeleted value)? todoDeleted,
    TResult? Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult? Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult? Function(_ClearCompletedRequested value)? clearCompletedRequested,
  }) {
    return undoDeletionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompletionToggled value)? completionToggled,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult Function(_ClearCompletedRequested value)? clearCompletedRequested,
    required TResult orElse(),
  }) {
    if (undoDeletionRequested != null) {
      return undoDeletionRequested(this);
    }
    return orElse();
  }
}

abstract class _UndoDeletionRequested implements TodoActorEvent {
  const factory _UndoDeletionRequested() = _$_UndoDeletionRequested;
}

/// @nodoc
abstract class _$$_ToggleAllRequestedCopyWith<$Res> {
  factory _$$_ToggleAllRequestedCopyWith(_$_ToggleAllRequested value,
          $Res Function(_$_ToggleAllRequested) then) =
      __$$_ToggleAllRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleAllRequestedCopyWithImpl<$Res>
    extends _$TodoActorEventCopyWithImpl<$Res, _$_ToggleAllRequested>
    implements _$$_ToggleAllRequestedCopyWith<$Res> {
  __$$_ToggleAllRequestedCopyWithImpl(
      _$_ToggleAllRequested _value, $Res Function(_$_ToggleAllRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToggleAllRequested implements _ToggleAllRequested {
  const _$_ToggleAllRequested();

  @override
  String toString() {
    return 'TodoActorEvent.toggleAllRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleAllRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) completionToggled,
    required TResult Function(Todo todo) todoDeleted,
    required TResult Function() undoDeletionRequested,
    required TResult Function() toggleAllRequested,
    required TResult Function() clearCompletedRequested,
  }) {
    return toggleAllRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo todo)? completionToggled,
    TResult? Function(Todo todo)? todoDeleted,
    TResult? Function()? undoDeletionRequested,
    TResult? Function()? toggleAllRequested,
    TResult? Function()? clearCompletedRequested,
  }) {
    return toggleAllRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? completionToggled,
    TResult Function(Todo todo)? todoDeleted,
    TResult Function()? undoDeletionRequested,
    TResult Function()? toggleAllRequested,
    TResult Function()? clearCompletedRequested,
    required TResult orElse(),
  }) {
    if (toggleAllRequested != null) {
      return toggleAllRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompletionToggled value) completionToggled,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_UndoDeletionRequested value)
        undoDeletionRequested,
    required TResult Function(_ToggleAllRequested value) toggleAllRequested,
    required TResult Function(_ClearCompletedRequested value)
        clearCompletedRequested,
  }) {
    return toggleAllRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompletionToggled value)? completionToggled,
    TResult? Function(_TodoDeleted value)? todoDeleted,
    TResult? Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult? Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult? Function(_ClearCompletedRequested value)? clearCompletedRequested,
  }) {
    return toggleAllRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompletionToggled value)? completionToggled,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult Function(_ClearCompletedRequested value)? clearCompletedRequested,
    required TResult orElse(),
  }) {
    if (toggleAllRequested != null) {
      return toggleAllRequested(this);
    }
    return orElse();
  }
}

abstract class _ToggleAllRequested implements TodoActorEvent {
  const factory _ToggleAllRequested() = _$_ToggleAllRequested;
}

/// @nodoc
abstract class _$$_ClearCompletedRequestedCopyWith<$Res> {
  factory _$$_ClearCompletedRequestedCopyWith(_$_ClearCompletedRequested value,
          $Res Function(_$_ClearCompletedRequested) then) =
      __$$_ClearCompletedRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearCompletedRequestedCopyWithImpl<$Res>
    extends _$TodoActorEventCopyWithImpl<$Res, _$_ClearCompletedRequested>
    implements _$$_ClearCompletedRequestedCopyWith<$Res> {
  __$$_ClearCompletedRequestedCopyWithImpl(_$_ClearCompletedRequested _value,
      $Res Function(_$_ClearCompletedRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearCompletedRequested implements _ClearCompletedRequested {
  const _$_ClearCompletedRequested();

  @override
  String toString() {
    return 'TodoActorEvent.clearCompletedRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearCompletedRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) completionToggled,
    required TResult Function(Todo todo) todoDeleted,
    required TResult Function() undoDeletionRequested,
    required TResult Function() toggleAllRequested,
    required TResult Function() clearCompletedRequested,
  }) {
    return clearCompletedRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo todo)? completionToggled,
    TResult? Function(Todo todo)? todoDeleted,
    TResult? Function()? undoDeletionRequested,
    TResult? Function()? toggleAllRequested,
    TResult? Function()? clearCompletedRequested,
  }) {
    return clearCompletedRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? completionToggled,
    TResult Function(Todo todo)? todoDeleted,
    TResult Function()? undoDeletionRequested,
    TResult Function()? toggleAllRequested,
    TResult Function()? clearCompletedRequested,
    required TResult orElse(),
  }) {
    if (clearCompletedRequested != null) {
      return clearCompletedRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompletionToggled value) completionToggled,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_UndoDeletionRequested value)
        undoDeletionRequested,
    required TResult Function(_ToggleAllRequested value) toggleAllRequested,
    required TResult Function(_ClearCompletedRequested value)
        clearCompletedRequested,
  }) {
    return clearCompletedRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompletionToggled value)? completionToggled,
    TResult? Function(_TodoDeleted value)? todoDeleted,
    TResult? Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult? Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult? Function(_ClearCompletedRequested value)? clearCompletedRequested,
  }) {
    return clearCompletedRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompletionToggled value)? completionToggled,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_UndoDeletionRequested value)? undoDeletionRequested,
    TResult Function(_ToggleAllRequested value)? toggleAllRequested,
    TResult Function(_ClearCompletedRequested value)? clearCompletedRequested,
    required TResult orElse(),
  }) {
    if (clearCompletedRequested != null) {
      return clearCompletedRequested(this);
    }
    return orElse();
  }
}

abstract class _ClearCompletedRequested implements TodoActorEvent {
  const factory _ClearCompletedRequested() = _$_ClearCompletedRequested;
}

/// @nodoc
mixin _$TodoActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(String message)? actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? actionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) actionInProgress,
    required TResult Function(_LoadSuccess value) actionSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? actionInProgress,
    TResult? Function(_LoadSuccess value)? actionSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? actionInProgress,
    TResult Function(_LoadSuccess value)? actionSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? actionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoActorStateCopyWith<$Res> {
  factory $TodoActorStateCopyWith(
          TodoActorState value, $Res Function(TodoActorState) then) =
      _$TodoActorStateCopyWithImpl<$Res, TodoActorState>;
}

/// @nodoc
class _$TodoActorStateCopyWithImpl<$Res, $Val extends TodoActorState>
    implements $TodoActorStateCopyWith<$Res> {
  _$TodoActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TodoActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TodoActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) actionFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(String message)? actionFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? actionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) actionInProgress,
    required TResult Function(_LoadSuccess value) actionSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) actionFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? actionInProgress,
    TResult? Function(_LoadSuccess value)? actionSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? actionFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? actionInProgress,
    TResult Function(_LoadSuccess value)? actionSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodoActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$TodoActorStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TodoActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) actionFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(String message)? actionFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) actionInProgress,
    required TResult Function(_LoadSuccess value) actionSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) actionFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? actionInProgress,
    TResult? Function(_LoadSuccess value)? actionSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? actionFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? actionInProgress,
    TResult Function(_LoadSuccess value)? actionSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TodoActorState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$TodoActorStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess();

  @override
  String toString() {
    return 'TodoActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) actionFailure,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(String message)? actionFailure,
  }) {
    return actionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) actionInProgress,
    required TResult Function(_LoadSuccess value) actionSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) actionFailure,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? actionInProgress,
    TResult? Function(_LoadSuccess value)? actionSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? actionFailure,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? actionInProgress,
    TResult Function(_LoadSuccess value)? actionSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements TodoActorState {
  const factory _LoadSuccess() = _$_LoadSuccess;
}

/// @nodoc
abstract class _$$_DeleteSuccessCopyWith<$Res> {
  factory _$$_DeleteSuccessCopyWith(
          _$_DeleteSuccess value, $Res Function(_$_DeleteSuccess) then) =
      __$$_DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteSuccessCopyWithImpl<$Res>
    extends _$TodoActorStateCopyWithImpl<$Res, _$_DeleteSuccess>
    implements _$$_DeleteSuccessCopyWith<$Res> {
  __$$_DeleteSuccessCopyWithImpl(
      _$_DeleteSuccess _value, $Res Function(_$_DeleteSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'TodoActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) actionFailure,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(String message)? actionFailure,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? actionFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) actionInProgress,
    required TResult Function(_LoadSuccess value) actionSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) actionFailure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? actionInProgress,
    TResult? Function(_LoadSuccess value)? actionSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? actionFailure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? actionInProgress,
    TResult Function(_LoadSuccess value)? actionSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements TodoActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$TodoActorStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LoadFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TodoActorState.actionFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) actionFailure,
  }) {
    return actionFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(String message)? actionFailure,
  }) {
    return actionFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) actionInProgress,
    required TResult Function(_LoadSuccess value) actionSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) actionFailure,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? actionInProgress,
    TResult? Function(_LoadSuccess value)? actionSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? actionFailure,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? actionInProgress,
    TResult Function(_LoadSuccess value)? actionSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements TodoActorState {
  const factory _LoadFailure(final String message) = _$_LoadFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
