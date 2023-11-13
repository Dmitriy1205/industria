// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_employee_document_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteEmployeeDocumentEvent {
  String get employeeUid => throw _privateConstructorUsedError;
  List<String> get uids => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeUid, List<String> uids)
        deleteDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeUid, List<String> uids)? deleteDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeUid, List<String> uids)? deleteDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDocumentEvent value) deleteDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDocumentEvent value)? deleteDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDocumentEvent value)? deleteDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteEmployeeDocumentEventCopyWith<DeleteEmployeeDocumentEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteEmployeeDocumentEventCopyWith<$Res> {
  factory $DeleteEmployeeDocumentEventCopyWith(
          DeleteEmployeeDocumentEvent value,
          $Res Function(DeleteEmployeeDocumentEvent) then) =
      _$DeleteEmployeeDocumentEventCopyWithImpl<$Res,
          DeleteEmployeeDocumentEvent>;
  @useResult
  $Res call({String employeeUid, List<String> uids});
}

/// @nodoc
class _$DeleteEmployeeDocumentEventCopyWithImpl<$Res,
        $Val extends DeleteEmployeeDocumentEvent>
    implements $DeleteEmployeeDocumentEventCopyWith<$Res> {
  _$DeleteEmployeeDocumentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeUid = null,
    Object? uids = null,
  }) {
    return _then(_value.copyWith(
      employeeUid: null == employeeUid
          ? _value.employeeUid
          : employeeUid // ignore: cast_nullable_to_non_nullable
              as String,
      uids: null == uids
          ? _value.uids
          : uids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteDocumentEventCopyWith<$Res>
    implements $DeleteEmployeeDocumentEventCopyWith<$Res> {
  factory _$$_DeleteDocumentEventCopyWith(_$_DeleteDocumentEvent value,
          $Res Function(_$_DeleteDocumentEvent) then) =
      __$$_DeleteDocumentEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String employeeUid, List<String> uids});
}

/// @nodoc
class __$$_DeleteDocumentEventCopyWithImpl<$Res>
    extends _$DeleteEmployeeDocumentEventCopyWithImpl<$Res,
        _$_DeleteDocumentEvent>
    implements _$$_DeleteDocumentEventCopyWith<$Res> {
  __$$_DeleteDocumentEventCopyWithImpl(_$_DeleteDocumentEvent _value,
      $Res Function(_$_DeleteDocumentEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeUid = null,
    Object? uids = null,
  }) {
    return _then(_$_DeleteDocumentEvent(
      employeeUid: null == employeeUid
          ? _value.employeeUid
          : employeeUid // ignore: cast_nullable_to_non_nullable
              as String,
      uids: null == uids
          ? _value._uids
          : uids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_DeleteDocumentEvent implements _DeleteDocumentEvent {
  const _$_DeleteDocumentEvent(
      {required this.employeeUid, required final List<String> uids})
      : _uids = uids;

  @override
  final String employeeUid;
  final List<String> _uids;
  @override
  List<String> get uids {
    if (_uids is EqualUnmodifiableListView) return _uids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uids);
  }

  @override
  String toString() {
    return 'DeleteEmployeeDocumentEvent.deleteDocument(employeeUid: $employeeUid, uids: $uids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteDocumentEvent &&
            (identical(other.employeeUid, employeeUid) ||
                other.employeeUid == employeeUid) &&
            const DeepCollectionEquality().equals(other._uids, _uids));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, employeeUid, const DeepCollectionEquality().hash(_uids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteDocumentEventCopyWith<_$_DeleteDocumentEvent> get copyWith =>
      __$$_DeleteDocumentEventCopyWithImpl<_$_DeleteDocumentEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeUid, List<String> uids)
        deleteDocument,
  }) {
    return deleteDocument(employeeUid, uids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeUid, List<String> uids)? deleteDocument,
  }) {
    return deleteDocument?.call(employeeUid, uids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeUid, List<String> uids)? deleteDocument,
    required TResult orElse(),
  }) {
    if (deleteDocument != null) {
      return deleteDocument(employeeUid, uids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDocumentEvent value) deleteDocument,
  }) {
    return deleteDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDocumentEvent value)? deleteDocument,
  }) {
    return deleteDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDocumentEvent value)? deleteDocument,
    required TResult orElse(),
  }) {
    if (deleteDocument != null) {
      return deleteDocument(this);
    }
    return orElse();
  }
}

abstract class _DeleteDocumentEvent implements DeleteEmployeeDocumentEvent {
  const factory _DeleteDocumentEvent(
      {required final String employeeUid,
      required final List<String> uids}) = _$_DeleteDocumentEvent;

  @override
  String get employeeUid;
  @override
  List<String> get uids;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteDocumentEventCopyWith<_$_DeleteDocumentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteEmployeeDocumentState {
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
abstract class $DeleteEmployeeDocumentStateCopyWith<$Res> {
  factory $DeleteEmployeeDocumentStateCopyWith(
          DeleteEmployeeDocumentState value,
          $Res Function(DeleteEmployeeDocumentState) then) =
      _$DeleteEmployeeDocumentStateCopyWithImpl<$Res,
          DeleteEmployeeDocumentState>;
}

/// @nodoc
class _$DeleteEmployeeDocumentStateCopyWithImpl<$Res,
        $Val extends DeleteEmployeeDocumentState>
    implements $DeleteEmployeeDocumentStateCopyWith<$Res> {
  _$DeleteEmployeeDocumentStateCopyWithImpl(this._value, this._then);

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
    extends _$DeleteEmployeeDocumentStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'DeleteEmployeeDocumentState.initial()';
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

abstract class _InitialState implements DeleteEmployeeDocumentState {
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
    extends _$DeleteEmployeeDocumentStateCopyWithImpl<$Res, _$_LoadingState>
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
    return 'DeleteEmployeeDocumentState.loading()';
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

abstract class _LoadingState implements DeleteEmployeeDocumentState {
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
    extends _$DeleteEmployeeDocumentStateCopyWithImpl<$Res, _$_SuccessState>
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
    return 'DeleteEmployeeDocumentState.success()';
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

abstract class _SuccessState implements DeleteEmployeeDocumentState {
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
    extends _$DeleteEmployeeDocumentStateCopyWithImpl<$Res, _$_FailState>
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
    return 'DeleteEmployeeDocumentState.fail()';
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

abstract class _FailState implements DeleteEmployeeDocumentState {
  const factory _FailState() = _$_FailState;
}
