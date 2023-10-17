// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_delete_feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminDeleteFeedbackEvent {
  List<Feedback> get feedbackId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Feedback> feedbackId) deleteFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Feedback> feedbackId)? deleteFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Feedback> feedbackId)? deleteFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteFeedbackEvent value) deleteFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteFeedbackEvent value)? deleteFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteFeedbackEvent value)? deleteFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminDeleteFeedbackEventCopyWith<AdminDeleteFeedbackEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminDeleteFeedbackEventCopyWith<$Res> {
  factory $AdminDeleteFeedbackEventCopyWith(AdminDeleteFeedbackEvent value,
          $Res Function(AdminDeleteFeedbackEvent) then) =
      _$AdminDeleteFeedbackEventCopyWithImpl<$Res, AdminDeleteFeedbackEvent>;
  @useResult
  $Res call({List<Feedback> feedbackId});
}

/// @nodoc
class _$AdminDeleteFeedbackEventCopyWithImpl<$Res,
        $Val extends AdminDeleteFeedbackEvent>
    implements $AdminDeleteFeedbackEventCopyWith<$Res> {
  _$AdminDeleteFeedbackEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedbackId = null,
  }) {
    return _then(_value.copyWith(
      feedbackId: null == feedbackId
          ? _value.feedbackId
          : feedbackId // ignore: cast_nullable_to_non_nullable
              as List<Feedback>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteFeedbackEventCopyWith<$Res>
    implements $AdminDeleteFeedbackEventCopyWith<$Res> {
  factory _$$_DeleteFeedbackEventCopyWith(_$_DeleteFeedbackEvent value,
          $Res Function(_$_DeleteFeedbackEvent) then) =
      __$$_DeleteFeedbackEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Feedback> feedbackId});
}

/// @nodoc
class __$$_DeleteFeedbackEventCopyWithImpl<$Res>
    extends _$AdminDeleteFeedbackEventCopyWithImpl<$Res, _$_DeleteFeedbackEvent>
    implements _$$_DeleteFeedbackEventCopyWith<$Res> {
  __$$_DeleteFeedbackEventCopyWithImpl(_$_DeleteFeedbackEvent _value,
      $Res Function(_$_DeleteFeedbackEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedbackId = null,
  }) {
    return _then(_$_DeleteFeedbackEvent(
      feedbackId: null == feedbackId
          ? _value._feedbackId
          : feedbackId // ignore: cast_nullable_to_non_nullable
              as List<Feedback>,
    ));
  }
}

/// @nodoc

class _$_DeleteFeedbackEvent implements _DeleteFeedbackEvent {
  const _$_DeleteFeedbackEvent({required final List<Feedback> feedbackId})
      : _feedbackId = feedbackId;

  final List<Feedback> _feedbackId;
  @override
  List<Feedback> get feedbackId {
    if (_feedbackId is EqualUnmodifiableListView) return _feedbackId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedbackId);
  }

  @override
  String toString() {
    return 'AdminDeleteFeedbackEvent.deleteFeedback(feedbackId: $feedbackId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFeedbackEvent &&
            const DeepCollectionEquality()
                .equals(other._feedbackId, _feedbackId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_feedbackId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFeedbackEventCopyWith<_$_DeleteFeedbackEvent> get copyWith =>
      __$$_DeleteFeedbackEventCopyWithImpl<_$_DeleteFeedbackEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Feedback> feedbackId) deleteFeedback,
  }) {
    return deleteFeedback(feedbackId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Feedback> feedbackId)? deleteFeedback,
  }) {
    return deleteFeedback?.call(feedbackId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Feedback> feedbackId)? deleteFeedback,
    required TResult orElse(),
  }) {
    if (deleteFeedback != null) {
      return deleteFeedback(feedbackId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteFeedbackEvent value) deleteFeedback,
  }) {
    return deleteFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteFeedbackEvent value)? deleteFeedback,
  }) {
    return deleteFeedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteFeedbackEvent value)? deleteFeedback,
    required TResult orElse(),
  }) {
    if (deleteFeedback != null) {
      return deleteFeedback(this);
    }
    return orElse();
  }
}

abstract class _DeleteFeedbackEvent implements AdminDeleteFeedbackEvent {
  const factory _DeleteFeedbackEvent(
      {required final List<Feedback> feedbackId}) = _$_DeleteFeedbackEvent;

  @override
  List<Feedback> get feedbackId;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteFeedbackEventCopyWith<_$_DeleteFeedbackEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminDeleteFeedbackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailState value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailState value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailState value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminDeleteFeedbackStateCopyWith<$Res> {
  factory $AdminDeleteFeedbackStateCopyWith(AdminDeleteFeedbackState value,
          $Res Function(AdminDeleteFeedbackState) then) =
      _$AdminDeleteFeedbackStateCopyWithImpl<$Res, AdminDeleteFeedbackState>;
}

/// @nodoc
class _$AdminDeleteFeedbackStateCopyWithImpl<$Res,
        $Val extends AdminDeleteFeedbackState>
    implements $AdminDeleteFeedbackStateCopyWith<$Res> {
  _$AdminDeleteFeedbackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$AdminDeleteFeedbackStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'AdminDeleteFeedbackState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() fail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? fail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? fail,
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailState value) fail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailState value)? fail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailState value)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AdminDeleteFeedbackState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$AdminDeleteFeedbackStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'AdminDeleteFeedbackState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() fail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? fail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailState value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailState value)? fail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailState value)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AdminDeleteFeedbackState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$AdminDeleteFeedbackStateCopyWithImpl<$Res, _$_SuccessState>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState();

  @override
  String toString() {
    return 'AdminDeleteFeedbackState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() fail,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? fail,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailState value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailState value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailState value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements AdminDeleteFeedbackState {
  const factory _SuccessState() = _$_SuccessState;
}

/// @nodoc
abstract class _$$_FailStateCopyWith<$Res> {
  factory _$$_FailStateCopyWith(
          _$_FailState value, $Res Function(_$_FailState) then) =
      __$$_FailStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailStateCopyWithImpl<$Res>
    extends _$AdminDeleteFeedbackStateCopyWithImpl<$Res, _$_FailState>
    implements _$$_FailStateCopyWith<$Res> {
  __$$_FailStateCopyWithImpl(
      _$_FailState _value, $Res Function(_$_FailState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FailState implements _FailState {
  const _$_FailState();

  @override
  String toString() {
    return 'AdminDeleteFeedbackState.fail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() fail,
  }) {
    return fail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? fail,
  }) {
    return fail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailState value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailState value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailState value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _FailState implements AdminDeleteFeedbackState {
  const factory _FailState() = _$_FailState;
}
