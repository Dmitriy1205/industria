// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_documents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeDocumentsEvent {
  String get employeeUid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeUid) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeUid)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeUid)? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeDocumentsEventCopyWith<EmployeeDocumentsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDocumentsEventCopyWith<$Res> {
  factory $EmployeeDocumentsEventCopyWith(EmployeeDocumentsEvent value,
          $Res Function(EmployeeDocumentsEvent) then) =
      _$EmployeeDocumentsEventCopyWithImpl<$Res, EmployeeDocumentsEvent>;
  @useResult
  $Res call({String employeeUid});
}

/// @nodoc
class _$EmployeeDocumentsEventCopyWithImpl<$Res,
        $Val extends EmployeeDocumentsEvent>
    implements $EmployeeDocumentsEventCopyWith<$Res> {
  _$EmployeeDocumentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeUid = null,
  }) {
    return _then(_value.copyWith(
      employeeUid: null == employeeUid
          ? _value.employeeUid
          : employeeUid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchDataEventCopyWith<$Res>
    implements $EmployeeDocumentsEventCopyWith<$Res> {
  factory _$$_FetchDataEventCopyWith(
          _$_FetchDataEvent value, $Res Function(_$_FetchDataEvent) then) =
      __$$_FetchDataEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String employeeUid});
}

/// @nodoc
class __$$_FetchDataEventCopyWithImpl<$Res>
    extends _$EmployeeDocumentsEventCopyWithImpl<$Res, _$_FetchDataEvent>
    implements _$$_FetchDataEventCopyWith<$Res> {
  __$$_FetchDataEventCopyWithImpl(
      _$_FetchDataEvent _value, $Res Function(_$_FetchDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeUid = null,
  }) {
    return _then(_$_FetchDataEvent(
      employeeUid: null == employeeUid
          ? _value.employeeUid
          : employeeUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchDataEvent implements _FetchDataEvent {
  const _$_FetchDataEvent({required this.employeeUid});

  @override
  final String employeeUid;

  @override
  String toString() {
    return 'EmployeeDocumentsEvent.fetchData(employeeUid: $employeeUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchDataEvent &&
            (identical(other.employeeUid, employeeUid) ||
                other.employeeUid == employeeUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchDataEventCopyWith<_$_FetchDataEvent> get copyWith =>
      __$$_FetchDataEventCopyWithImpl<_$_FetchDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeUid) fetchData,
  }) {
    return fetchData(employeeUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeUid)? fetchData,
  }) {
    return fetchData?.call(employeeUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeUid)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(employeeUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchDataEvent implements EmployeeDocumentsEvent {
  const factory _FetchDataEvent({required final String employeeUid}) =
      _$_FetchDataEvent;

  @override
  String get employeeUid;
  @override
  @JsonKey(ignore: true)
  _$$_FetchDataEventCopyWith<_$_FetchDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeDocumentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<EmployeeDocument> documents) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<EmployeeDocument> documents)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<EmployeeDocument> documents)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDocumentsStateCopyWith<$Res> {
  factory $EmployeeDocumentsStateCopyWith(EmployeeDocumentsState value,
          $Res Function(EmployeeDocumentsState) then) =
      _$EmployeeDocumentsStateCopyWithImpl<$Res, EmployeeDocumentsState>;
}

/// @nodoc
class _$EmployeeDocumentsStateCopyWithImpl<$Res,
        $Val extends EmployeeDocumentsState>
    implements $EmployeeDocumentsStateCopyWith<$Res> {
  _$EmployeeDocumentsStateCopyWithImpl(this._value, this._then);

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
    extends _$EmployeeDocumentsStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState extends _InitialState {
  const _$_InitialState() : super._();

  @override
  String toString() {
    return 'EmployeeDocumentsState.initial()';
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
    required TResult Function(List<EmployeeDocument> documents) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<EmployeeDocument> documents)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<EmployeeDocument> documents)? loaded,
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
    required TResult Function(_LoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends EmployeeDocumentsState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EmployeeDocument> documents});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$EmployeeDocumentsStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
  }) {
    return _then(_$_LoadedState(
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDocument>,
    ));
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState({required final List<EmployeeDocument> documents})
      : _documents = documents,
        super._();

  final List<EmployeeDocument> _documents;
  @override
  List<EmployeeDocument> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'EmployeeDocumentsState.loaded(documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<EmployeeDocument> documents) loaded,
  }) {
    return loaded(documents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<EmployeeDocument> documents)? loaded,
  }) {
    return loaded?.call(documents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<EmployeeDocument> documents)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(documents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends EmployeeDocumentsState {
  const factory _LoadedState(
      {required final List<EmployeeDocument> documents}) = _$_LoadedState;
  const _LoadedState._() : super._();

  List<EmployeeDocument> get documents;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
