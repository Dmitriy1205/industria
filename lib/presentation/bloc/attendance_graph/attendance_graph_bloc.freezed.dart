// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_graph_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AttendanceGraphEvent {
  DateTime get date => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, String userUid)
        fetchAttendanceGraph,
    required TResult Function(DateTime date, String userUid) startWork,
    required TResult Function(DateTime date) startBreak,
    required TResult Function(DateTime date) stopBreak,
    required TResult Function(DateTime date, String comment) finishWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult? Function(DateTime date, String userUid)? startWork,
    TResult? Function(DateTime date)? startBreak,
    TResult? Function(DateTime date)? stopBreak,
    TResult? Function(DateTime date, String comment)? finishWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult Function(DateTime date, String userUid)? startWork,
    TResult Function(DateTime date)? startBreak,
    TResult Function(DateTime date)? stopBreak,
    TResult Function(DateTime date, String comment)? finishWork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAttendanceGraphEvent value)
        fetchAttendanceGraph,
    required TResult Function(_StartWorkEvent value) startWork,
    required TResult Function(_StartBreakEvent value) startBreak,
    required TResult Function(_StopBreakEvent value) stopBreak,
    required TResult Function(_FinishWorkEvent value) finishWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult? Function(_StartWorkEvent value)? startWork,
    TResult? Function(_StartBreakEvent value)? startBreak,
    TResult? Function(_StopBreakEvent value)? stopBreak,
    TResult? Function(_FinishWorkEvent value)? finishWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult Function(_StartWorkEvent value)? startWork,
    TResult Function(_StartBreakEvent value)? startBreak,
    TResult Function(_StopBreakEvent value)? stopBreak,
    TResult Function(_FinishWorkEvent value)? finishWork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendanceGraphEventCopyWith<AttendanceGraphEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceGraphEventCopyWith<$Res> {
  factory $AttendanceGraphEventCopyWith(AttendanceGraphEvent value,
          $Res Function(AttendanceGraphEvent) then) =
      _$AttendanceGraphEventCopyWithImpl<$Res, AttendanceGraphEvent>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class _$AttendanceGraphEventCopyWithImpl<$Res,
        $Val extends AttendanceGraphEvent>
    implements $AttendanceGraphEventCopyWith<$Res> {
  _$AttendanceGraphEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchAttendanceGraphEventCopyWith<$Res>
    implements $AttendanceGraphEventCopyWith<$Res> {
  factory _$$_FetchAttendanceGraphEventCopyWith(
          _$_FetchAttendanceGraphEvent value,
          $Res Function(_$_FetchAttendanceGraphEvent) then) =
      __$$_FetchAttendanceGraphEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, String userUid});
}

/// @nodoc
class __$$_FetchAttendanceGraphEventCopyWithImpl<$Res>
    extends _$AttendanceGraphEventCopyWithImpl<$Res,
        _$_FetchAttendanceGraphEvent>
    implements _$$_FetchAttendanceGraphEventCopyWith<$Res> {
  __$$_FetchAttendanceGraphEventCopyWithImpl(
      _$_FetchAttendanceGraphEvent _value,
      $Res Function(_$_FetchAttendanceGraphEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? userUid = null,
  }) {
    return _then(_$_FetchAttendanceGraphEvent(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchAttendanceGraphEvent implements _FetchAttendanceGraphEvent {
  const _$_FetchAttendanceGraphEvent(
      {required this.date, required this.userUid});

  @override
  final DateTime date;
  @override
  final String userUid;

  @override
  String toString() {
    return 'AttendanceGraphEvent.fetchAttendanceGraph(date: $date, userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchAttendanceGraphEvent &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchAttendanceGraphEventCopyWith<_$_FetchAttendanceGraphEvent>
      get copyWith => __$$_FetchAttendanceGraphEventCopyWithImpl<
          _$_FetchAttendanceGraphEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, String userUid)
        fetchAttendanceGraph,
    required TResult Function(DateTime date, String userUid) startWork,
    required TResult Function(DateTime date) startBreak,
    required TResult Function(DateTime date) stopBreak,
    required TResult Function(DateTime date, String comment) finishWork,
  }) {
    return fetchAttendanceGraph(date, userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult? Function(DateTime date, String userUid)? startWork,
    TResult? Function(DateTime date)? startBreak,
    TResult? Function(DateTime date)? stopBreak,
    TResult? Function(DateTime date, String comment)? finishWork,
  }) {
    return fetchAttendanceGraph?.call(date, userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult Function(DateTime date, String userUid)? startWork,
    TResult Function(DateTime date)? startBreak,
    TResult Function(DateTime date)? stopBreak,
    TResult Function(DateTime date, String comment)? finishWork,
    required TResult orElse(),
  }) {
    if (fetchAttendanceGraph != null) {
      return fetchAttendanceGraph(date, userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAttendanceGraphEvent value)
        fetchAttendanceGraph,
    required TResult Function(_StartWorkEvent value) startWork,
    required TResult Function(_StartBreakEvent value) startBreak,
    required TResult Function(_StopBreakEvent value) stopBreak,
    required TResult Function(_FinishWorkEvent value) finishWork,
  }) {
    return fetchAttendanceGraph(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult? Function(_StartWorkEvent value)? startWork,
    TResult? Function(_StartBreakEvent value)? startBreak,
    TResult? Function(_StopBreakEvent value)? stopBreak,
    TResult? Function(_FinishWorkEvent value)? finishWork,
  }) {
    return fetchAttendanceGraph?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult Function(_StartWorkEvent value)? startWork,
    TResult Function(_StartBreakEvent value)? startBreak,
    TResult Function(_StopBreakEvent value)? stopBreak,
    TResult Function(_FinishWorkEvent value)? finishWork,
    required TResult orElse(),
  }) {
    if (fetchAttendanceGraph != null) {
      return fetchAttendanceGraph(this);
    }
    return orElse();
  }
}

abstract class _FetchAttendanceGraphEvent implements AttendanceGraphEvent {
  const factory _FetchAttendanceGraphEvent(
      {required final DateTime date,
      required final String userUid}) = _$_FetchAttendanceGraphEvent;

  @override
  DateTime get date;
  String get userUid;
  @override
  @JsonKey(ignore: true)
  _$$_FetchAttendanceGraphEventCopyWith<_$_FetchAttendanceGraphEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartWorkEventCopyWith<$Res>
    implements $AttendanceGraphEventCopyWith<$Res> {
  factory _$$_StartWorkEventCopyWith(
          _$_StartWorkEvent value, $Res Function(_$_StartWorkEvent) then) =
      __$$_StartWorkEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, String userUid});
}

/// @nodoc
class __$$_StartWorkEventCopyWithImpl<$Res>
    extends _$AttendanceGraphEventCopyWithImpl<$Res, _$_StartWorkEvent>
    implements _$$_StartWorkEventCopyWith<$Res> {
  __$$_StartWorkEventCopyWithImpl(
      _$_StartWorkEvent _value, $Res Function(_$_StartWorkEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? userUid = null,
  }) {
    return _then(_$_StartWorkEvent(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartWorkEvent implements _StartWorkEvent {
  const _$_StartWorkEvent({required this.date, required this.userUid});

  @override
  final DateTime date;
  @override
  final String userUid;

  @override
  String toString() {
    return 'AttendanceGraphEvent.startWork(date: $date, userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartWorkEvent &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartWorkEventCopyWith<_$_StartWorkEvent> get copyWith =>
      __$$_StartWorkEventCopyWithImpl<_$_StartWorkEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, String userUid)
        fetchAttendanceGraph,
    required TResult Function(DateTime date, String userUid) startWork,
    required TResult Function(DateTime date) startBreak,
    required TResult Function(DateTime date) stopBreak,
    required TResult Function(DateTime date, String comment) finishWork,
  }) {
    return startWork(date, userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult? Function(DateTime date, String userUid)? startWork,
    TResult? Function(DateTime date)? startBreak,
    TResult? Function(DateTime date)? stopBreak,
    TResult? Function(DateTime date, String comment)? finishWork,
  }) {
    return startWork?.call(date, userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult Function(DateTime date, String userUid)? startWork,
    TResult Function(DateTime date)? startBreak,
    TResult Function(DateTime date)? stopBreak,
    TResult Function(DateTime date, String comment)? finishWork,
    required TResult orElse(),
  }) {
    if (startWork != null) {
      return startWork(date, userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAttendanceGraphEvent value)
        fetchAttendanceGraph,
    required TResult Function(_StartWorkEvent value) startWork,
    required TResult Function(_StartBreakEvent value) startBreak,
    required TResult Function(_StopBreakEvent value) stopBreak,
    required TResult Function(_FinishWorkEvent value) finishWork,
  }) {
    return startWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult? Function(_StartWorkEvent value)? startWork,
    TResult? Function(_StartBreakEvent value)? startBreak,
    TResult? Function(_StopBreakEvent value)? stopBreak,
    TResult? Function(_FinishWorkEvent value)? finishWork,
  }) {
    return startWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult Function(_StartWorkEvent value)? startWork,
    TResult Function(_StartBreakEvent value)? startBreak,
    TResult Function(_StopBreakEvent value)? stopBreak,
    TResult Function(_FinishWorkEvent value)? finishWork,
    required TResult orElse(),
  }) {
    if (startWork != null) {
      return startWork(this);
    }
    return orElse();
  }
}

abstract class _StartWorkEvent implements AttendanceGraphEvent {
  const factory _StartWorkEvent(
      {required final DateTime date,
      required final String userUid}) = _$_StartWorkEvent;

  @override
  DateTime get date;
  String get userUid;
  @override
  @JsonKey(ignore: true)
  _$$_StartWorkEventCopyWith<_$_StartWorkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartBreakEventCopyWith<$Res>
    implements $AttendanceGraphEventCopyWith<$Res> {
  factory _$$_StartBreakEventCopyWith(
          _$_StartBreakEvent value, $Res Function(_$_StartBreakEvent) then) =
      __$$_StartBreakEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_StartBreakEventCopyWithImpl<$Res>
    extends _$AttendanceGraphEventCopyWithImpl<$Res, _$_StartBreakEvent>
    implements _$$_StartBreakEventCopyWith<$Res> {
  __$$_StartBreakEventCopyWithImpl(
      _$_StartBreakEvent _value, $Res Function(_$_StartBreakEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_StartBreakEvent(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_StartBreakEvent implements _StartBreakEvent {
  const _$_StartBreakEvent({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'AttendanceGraphEvent.startBreak(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartBreakEvent &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartBreakEventCopyWith<_$_StartBreakEvent> get copyWith =>
      __$$_StartBreakEventCopyWithImpl<_$_StartBreakEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, String userUid)
        fetchAttendanceGraph,
    required TResult Function(DateTime date, String userUid) startWork,
    required TResult Function(DateTime date) startBreak,
    required TResult Function(DateTime date) stopBreak,
    required TResult Function(DateTime date, String comment) finishWork,
  }) {
    return startBreak(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult? Function(DateTime date, String userUid)? startWork,
    TResult? Function(DateTime date)? startBreak,
    TResult? Function(DateTime date)? stopBreak,
    TResult? Function(DateTime date, String comment)? finishWork,
  }) {
    return startBreak?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult Function(DateTime date, String userUid)? startWork,
    TResult Function(DateTime date)? startBreak,
    TResult Function(DateTime date)? stopBreak,
    TResult Function(DateTime date, String comment)? finishWork,
    required TResult orElse(),
  }) {
    if (startBreak != null) {
      return startBreak(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAttendanceGraphEvent value)
        fetchAttendanceGraph,
    required TResult Function(_StartWorkEvent value) startWork,
    required TResult Function(_StartBreakEvent value) startBreak,
    required TResult Function(_StopBreakEvent value) stopBreak,
    required TResult Function(_FinishWorkEvent value) finishWork,
  }) {
    return startBreak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult? Function(_StartWorkEvent value)? startWork,
    TResult? Function(_StartBreakEvent value)? startBreak,
    TResult? Function(_StopBreakEvent value)? stopBreak,
    TResult? Function(_FinishWorkEvent value)? finishWork,
  }) {
    return startBreak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult Function(_StartWorkEvent value)? startWork,
    TResult Function(_StartBreakEvent value)? startBreak,
    TResult Function(_StopBreakEvent value)? stopBreak,
    TResult Function(_FinishWorkEvent value)? finishWork,
    required TResult orElse(),
  }) {
    if (startBreak != null) {
      return startBreak(this);
    }
    return orElse();
  }
}

abstract class _StartBreakEvent implements AttendanceGraphEvent {
  const factory _StartBreakEvent({required final DateTime date}) =
      _$_StartBreakEvent;

  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_StartBreakEventCopyWith<_$_StartBreakEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StopBreakEventCopyWith<$Res>
    implements $AttendanceGraphEventCopyWith<$Res> {
  factory _$$_StopBreakEventCopyWith(
          _$_StopBreakEvent value, $Res Function(_$_StopBreakEvent) then) =
      __$$_StopBreakEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_StopBreakEventCopyWithImpl<$Res>
    extends _$AttendanceGraphEventCopyWithImpl<$Res, _$_StopBreakEvent>
    implements _$$_StopBreakEventCopyWith<$Res> {
  __$$_StopBreakEventCopyWithImpl(
      _$_StopBreakEvent _value, $Res Function(_$_StopBreakEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_StopBreakEvent(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_StopBreakEvent implements _StopBreakEvent {
  const _$_StopBreakEvent({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'AttendanceGraphEvent.stopBreak(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StopBreakEvent &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StopBreakEventCopyWith<_$_StopBreakEvent> get copyWith =>
      __$$_StopBreakEventCopyWithImpl<_$_StopBreakEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, String userUid)
        fetchAttendanceGraph,
    required TResult Function(DateTime date, String userUid) startWork,
    required TResult Function(DateTime date) startBreak,
    required TResult Function(DateTime date) stopBreak,
    required TResult Function(DateTime date, String comment) finishWork,
  }) {
    return stopBreak(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult? Function(DateTime date, String userUid)? startWork,
    TResult? Function(DateTime date)? startBreak,
    TResult? Function(DateTime date)? stopBreak,
    TResult? Function(DateTime date, String comment)? finishWork,
  }) {
    return stopBreak?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult Function(DateTime date, String userUid)? startWork,
    TResult Function(DateTime date)? startBreak,
    TResult Function(DateTime date)? stopBreak,
    TResult Function(DateTime date, String comment)? finishWork,
    required TResult orElse(),
  }) {
    if (stopBreak != null) {
      return stopBreak(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAttendanceGraphEvent value)
        fetchAttendanceGraph,
    required TResult Function(_StartWorkEvent value) startWork,
    required TResult Function(_StartBreakEvent value) startBreak,
    required TResult Function(_StopBreakEvent value) stopBreak,
    required TResult Function(_FinishWorkEvent value) finishWork,
  }) {
    return stopBreak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult? Function(_StartWorkEvent value)? startWork,
    TResult? Function(_StartBreakEvent value)? startBreak,
    TResult? Function(_StopBreakEvent value)? stopBreak,
    TResult? Function(_FinishWorkEvent value)? finishWork,
  }) {
    return stopBreak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult Function(_StartWorkEvent value)? startWork,
    TResult Function(_StartBreakEvent value)? startBreak,
    TResult Function(_StopBreakEvent value)? stopBreak,
    TResult Function(_FinishWorkEvent value)? finishWork,
    required TResult orElse(),
  }) {
    if (stopBreak != null) {
      return stopBreak(this);
    }
    return orElse();
  }
}

abstract class _StopBreakEvent implements AttendanceGraphEvent {
  const factory _StopBreakEvent({required final DateTime date}) =
      _$_StopBreakEvent;

  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_StopBreakEventCopyWith<_$_StopBreakEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishWorkEventCopyWith<$Res>
    implements $AttendanceGraphEventCopyWith<$Res> {
  factory _$$_FinishWorkEventCopyWith(
          _$_FinishWorkEvent value, $Res Function(_$_FinishWorkEvent) then) =
      __$$_FinishWorkEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, String comment});
}

/// @nodoc
class __$$_FinishWorkEventCopyWithImpl<$Res>
    extends _$AttendanceGraphEventCopyWithImpl<$Res, _$_FinishWorkEvent>
    implements _$$_FinishWorkEventCopyWith<$Res> {
  __$$_FinishWorkEventCopyWithImpl(
      _$_FinishWorkEvent _value, $Res Function(_$_FinishWorkEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? comment = null,
  }) {
    return _then(_$_FinishWorkEvent(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FinishWorkEvent implements _FinishWorkEvent {
  const _$_FinishWorkEvent({required this.date, required this.comment});

  @override
  final DateTime date;
  @override
  final String comment;

  @override
  String toString() {
    return 'AttendanceGraphEvent.finishWork(date: $date, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinishWorkEvent &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinishWorkEventCopyWith<_$_FinishWorkEvent> get copyWith =>
      __$$_FinishWorkEventCopyWithImpl<_$_FinishWorkEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, String userUid)
        fetchAttendanceGraph,
    required TResult Function(DateTime date, String userUid) startWork,
    required TResult Function(DateTime date) startBreak,
    required TResult Function(DateTime date) stopBreak,
    required TResult Function(DateTime date, String comment) finishWork,
  }) {
    return finishWork(date, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult? Function(DateTime date, String userUid)? startWork,
    TResult? Function(DateTime date)? startBreak,
    TResult? Function(DateTime date)? stopBreak,
    TResult? Function(DateTime date, String comment)? finishWork,
  }) {
    return finishWork?.call(date, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, String userUid)? fetchAttendanceGraph,
    TResult Function(DateTime date, String userUid)? startWork,
    TResult Function(DateTime date)? startBreak,
    TResult Function(DateTime date)? stopBreak,
    TResult Function(DateTime date, String comment)? finishWork,
    required TResult orElse(),
  }) {
    if (finishWork != null) {
      return finishWork(date, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAttendanceGraphEvent value)
        fetchAttendanceGraph,
    required TResult Function(_StartWorkEvent value) startWork,
    required TResult Function(_StartBreakEvent value) startBreak,
    required TResult Function(_StopBreakEvent value) stopBreak,
    required TResult Function(_FinishWorkEvent value) finishWork,
  }) {
    return finishWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult? Function(_StartWorkEvent value)? startWork,
    TResult? Function(_StartBreakEvent value)? startBreak,
    TResult? Function(_StopBreakEvent value)? stopBreak,
    TResult? Function(_FinishWorkEvent value)? finishWork,
  }) {
    return finishWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAttendanceGraphEvent value)? fetchAttendanceGraph,
    TResult Function(_StartWorkEvent value)? startWork,
    TResult Function(_StartBreakEvent value)? startBreak,
    TResult Function(_StopBreakEvent value)? stopBreak,
    TResult Function(_FinishWorkEvent value)? finishWork,
    required TResult orElse(),
  }) {
    if (finishWork != null) {
      return finishWork(this);
    }
    return orElse();
  }
}

abstract class _FinishWorkEvent implements AttendanceGraphEvent {
  const factory _FinishWorkEvent(
      {required final DateTime date,
      required final String comment}) = _$_FinishWorkEvent;

  @override
  DateTime get date;
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_FinishWorkEventCopyWith<_$_FinishWorkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttendanceGraphState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AttendanceGraph graph) notStarted,
    required TResult Function(AttendanceGraph graph) working,
    required TResult Function(AttendanceGraph graph) breaked,
    required TResult Function(AttendanceGraph graph) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AttendanceGraph graph)? notStarted,
    TResult? Function(AttendanceGraph graph)? working,
    TResult? Function(AttendanceGraph graph)? breaked,
    TResult? Function(AttendanceGraph graph)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AttendanceGraph graph)? notStarted,
    TResult Function(AttendanceGraph graph)? working,
    TResult Function(AttendanceGraph graph)? breaked,
    TResult Function(AttendanceGraph graph)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NotStartedState value) notStarted,
    required TResult Function(_WorkingState value) working,
    required TResult Function(_BreakedState value) breaked,
    required TResult Function(_FinishedState value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NotStartedState value)? notStarted,
    TResult? Function(_WorkingState value)? working,
    TResult? Function(_BreakedState value)? breaked,
    TResult? Function(_FinishedState value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NotStartedState value)? notStarted,
    TResult Function(_WorkingState value)? working,
    TResult Function(_BreakedState value)? breaked,
    TResult Function(_FinishedState value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceGraphStateCopyWith<$Res> {
  factory $AttendanceGraphStateCopyWith(AttendanceGraphState value,
          $Res Function(AttendanceGraphState) then) =
      _$AttendanceGraphStateCopyWithImpl<$Res, AttendanceGraphState>;
}

/// @nodoc
class _$AttendanceGraphStateCopyWithImpl<$Res,
        $Val extends AttendanceGraphState>
    implements $AttendanceGraphStateCopyWith<$Res> {
  _$AttendanceGraphStateCopyWithImpl(this._value, this._then);

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
    extends _$AttendanceGraphStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'AttendanceGraphState.initial()';
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
    required TResult Function(AttendanceGraph graph) notStarted,
    required TResult Function(AttendanceGraph graph) working,
    required TResult Function(AttendanceGraph graph) breaked,
    required TResult Function(AttendanceGraph graph) finished,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AttendanceGraph graph)? notStarted,
    TResult? Function(AttendanceGraph graph)? working,
    TResult? Function(AttendanceGraph graph)? breaked,
    TResult? Function(AttendanceGraph graph)? finished,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AttendanceGraph graph)? notStarted,
    TResult Function(AttendanceGraph graph)? working,
    TResult Function(AttendanceGraph graph)? breaked,
    TResult Function(AttendanceGraph graph)? finished,
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
    required TResult Function(_NotStartedState value) notStarted,
    required TResult Function(_WorkingState value) working,
    required TResult Function(_BreakedState value) breaked,
    required TResult Function(_FinishedState value) finished,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NotStartedState value)? notStarted,
    TResult? Function(_WorkingState value)? working,
    TResult? Function(_BreakedState value)? breaked,
    TResult? Function(_FinishedState value)? finished,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NotStartedState value)? notStarted,
    TResult Function(_WorkingState value)? working,
    TResult Function(_BreakedState value)? breaked,
    TResult Function(_FinishedState value)? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends AttendanceGraphState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_NotStartedStateCopyWith<$Res> {
  factory _$$_NotStartedStateCopyWith(
          _$_NotStartedState value, $Res Function(_$_NotStartedState) then) =
      __$$_NotStartedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendanceGraph graph});

  $AttendanceGraphCopyWith<$Res> get graph;
}

/// @nodoc
class __$$_NotStartedStateCopyWithImpl<$Res>
    extends _$AttendanceGraphStateCopyWithImpl<$Res, _$_NotStartedState>
    implements _$$_NotStartedStateCopyWith<$Res> {
  __$$_NotStartedStateCopyWithImpl(
      _$_NotStartedState _value, $Res Function(_$_NotStartedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graph = null,
  }) {
    return _then(_$_NotStartedState(
      graph: null == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as AttendanceGraph,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceGraphCopyWith<$Res> get graph {
    return $AttendanceGraphCopyWith<$Res>(_value.graph, (value) {
      return _then(_value.copyWith(graph: value));
    });
  }
}

/// @nodoc

class _$_NotStartedState extends _NotStartedState {
  const _$_NotStartedState({required this.graph}) : super._();

  @override
  final AttendanceGraph graph;

  @override
  String toString() {
    return 'AttendanceGraphState.notStarted(graph: $graph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotStartedState &&
            (identical(other.graph, graph) || other.graph == graph));
  }

  @override
  int get hashCode => Object.hash(runtimeType, graph);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotStartedStateCopyWith<_$_NotStartedState> get copyWith =>
      __$$_NotStartedStateCopyWithImpl<_$_NotStartedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AttendanceGraph graph) notStarted,
    required TResult Function(AttendanceGraph graph) working,
    required TResult Function(AttendanceGraph graph) breaked,
    required TResult Function(AttendanceGraph graph) finished,
  }) {
    return notStarted(graph);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AttendanceGraph graph)? notStarted,
    TResult? Function(AttendanceGraph graph)? working,
    TResult? Function(AttendanceGraph graph)? breaked,
    TResult? Function(AttendanceGraph graph)? finished,
  }) {
    return notStarted?.call(graph);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AttendanceGraph graph)? notStarted,
    TResult Function(AttendanceGraph graph)? working,
    TResult Function(AttendanceGraph graph)? breaked,
    TResult Function(AttendanceGraph graph)? finished,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted(graph);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NotStartedState value) notStarted,
    required TResult Function(_WorkingState value) working,
    required TResult Function(_BreakedState value) breaked,
    required TResult Function(_FinishedState value) finished,
  }) {
    return notStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NotStartedState value)? notStarted,
    TResult? Function(_WorkingState value)? working,
    TResult? Function(_BreakedState value)? breaked,
    TResult? Function(_FinishedState value)? finished,
  }) {
    return notStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NotStartedState value)? notStarted,
    TResult Function(_WorkingState value)? working,
    TResult Function(_BreakedState value)? breaked,
    TResult Function(_FinishedState value)? finished,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted(this);
    }
    return orElse();
  }
}

abstract class _NotStartedState extends AttendanceGraphState {
  const factory _NotStartedState({required final AttendanceGraph graph}) =
      _$_NotStartedState;
  const _NotStartedState._() : super._();

  AttendanceGraph get graph;
  @JsonKey(ignore: true)
  _$$_NotStartedStateCopyWith<_$_NotStartedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkingStateCopyWith<$Res> {
  factory _$$_WorkingStateCopyWith(
          _$_WorkingState value, $Res Function(_$_WorkingState) then) =
      __$$_WorkingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendanceGraph graph});

  $AttendanceGraphCopyWith<$Res> get graph;
}

/// @nodoc
class __$$_WorkingStateCopyWithImpl<$Res>
    extends _$AttendanceGraphStateCopyWithImpl<$Res, _$_WorkingState>
    implements _$$_WorkingStateCopyWith<$Res> {
  __$$_WorkingStateCopyWithImpl(
      _$_WorkingState _value, $Res Function(_$_WorkingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graph = null,
  }) {
    return _then(_$_WorkingState(
      graph: null == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as AttendanceGraph,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceGraphCopyWith<$Res> get graph {
    return $AttendanceGraphCopyWith<$Res>(_value.graph, (value) {
      return _then(_value.copyWith(graph: value));
    });
  }
}

/// @nodoc

class _$_WorkingState extends _WorkingState {
  const _$_WorkingState({required this.graph}) : super._();

  @override
  final AttendanceGraph graph;

  @override
  String toString() {
    return 'AttendanceGraphState.working(graph: $graph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkingState &&
            (identical(other.graph, graph) || other.graph == graph));
  }

  @override
  int get hashCode => Object.hash(runtimeType, graph);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkingStateCopyWith<_$_WorkingState> get copyWith =>
      __$$_WorkingStateCopyWithImpl<_$_WorkingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AttendanceGraph graph) notStarted,
    required TResult Function(AttendanceGraph graph) working,
    required TResult Function(AttendanceGraph graph) breaked,
    required TResult Function(AttendanceGraph graph) finished,
  }) {
    return working(graph);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AttendanceGraph graph)? notStarted,
    TResult? Function(AttendanceGraph graph)? working,
    TResult? Function(AttendanceGraph graph)? breaked,
    TResult? Function(AttendanceGraph graph)? finished,
  }) {
    return working?.call(graph);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AttendanceGraph graph)? notStarted,
    TResult Function(AttendanceGraph graph)? working,
    TResult Function(AttendanceGraph graph)? breaked,
    TResult Function(AttendanceGraph graph)? finished,
    required TResult orElse(),
  }) {
    if (working != null) {
      return working(graph);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NotStartedState value) notStarted,
    required TResult Function(_WorkingState value) working,
    required TResult Function(_BreakedState value) breaked,
    required TResult Function(_FinishedState value) finished,
  }) {
    return working(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NotStartedState value)? notStarted,
    TResult? Function(_WorkingState value)? working,
    TResult? Function(_BreakedState value)? breaked,
    TResult? Function(_FinishedState value)? finished,
  }) {
    return working?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NotStartedState value)? notStarted,
    TResult Function(_WorkingState value)? working,
    TResult Function(_BreakedState value)? breaked,
    TResult Function(_FinishedState value)? finished,
    required TResult orElse(),
  }) {
    if (working != null) {
      return working(this);
    }
    return orElse();
  }
}

abstract class _WorkingState extends AttendanceGraphState {
  const factory _WorkingState({required final AttendanceGraph graph}) =
      _$_WorkingState;
  const _WorkingState._() : super._();

  AttendanceGraph get graph;
  @JsonKey(ignore: true)
  _$$_WorkingStateCopyWith<_$_WorkingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BreakedStateCopyWith<$Res> {
  factory _$$_BreakedStateCopyWith(
          _$_BreakedState value, $Res Function(_$_BreakedState) then) =
      __$$_BreakedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendanceGraph graph});

  $AttendanceGraphCopyWith<$Res> get graph;
}

/// @nodoc
class __$$_BreakedStateCopyWithImpl<$Res>
    extends _$AttendanceGraphStateCopyWithImpl<$Res, _$_BreakedState>
    implements _$$_BreakedStateCopyWith<$Res> {
  __$$_BreakedStateCopyWithImpl(
      _$_BreakedState _value, $Res Function(_$_BreakedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graph = null,
  }) {
    return _then(_$_BreakedState(
      graph: null == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as AttendanceGraph,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceGraphCopyWith<$Res> get graph {
    return $AttendanceGraphCopyWith<$Res>(_value.graph, (value) {
      return _then(_value.copyWith(graph: value));
    });
  }
}

/// @nodoc

class _$_BreakedState extends _BreakedState {
  const _$_BreakedState({required this.graph}) : super._();

  @override
  final AttendanceGraph graph;

  @override
  String toString() {
    return 'AttendanceGraphState.breaked(graph: $graph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BreakedState &&
            (identical(other.graph, graph) || other.graph == graph));
  }

  @override
  int get hashCode => Object.hash(runtimeType, graph);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BreakedStateCopyWith<_$_BreakedState> get copyWith =>
      __$$_BreakedStateCopyWithImpl<_$_BreakedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AttendanceGraph graph) notStarted,
    required TResult Function(AttendanceGraph graph) working,
    required TResult Function(AttendanceGraph graph) breaked,
    required TResult Function(AttendanceGraph graph) finished,
  }) {
    return breaked(graph);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AttendanceGraph graph)? notStarted,
    TResult? Function(AttendanceGraph graph)? working,
    TResult? Function(AttendanceGraph graph)? breaked,
    TResult? Function(AttendanceGraph graph)? finished,
  }) {
    return breaked?.call(graph);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AttendanceGraph graph)? notStarted,
    TResult Function(AttendanceGraph graph)? working,
    TResult Function(AttendanceGraph graph)? breaked,
    TResult Function(AttendanceGraph graph)? finished,
    required TResult orElse(),
  }) {
    if (breaked != null) {
      return breaked(graph);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NotStartedState value) notStarted,
    required TResult Function(_WorkingState value) working,
    required TResult Function(_BreakedState value) breaked,
    required TResult Function(_FinishedState value) finished,
  }) {
    return breaked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NotStartedState value)? notStarted,
    TResult? Function(_WorkingState value)? working,
    TResult? Function(_BreakedState value)? breaked,
    TResult? Function(_FinishedState value)? finished,
  }) {
    return breaked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NotStartedState value)? notStarted,
    TResult Function(_WorkingState value)? working,
    TResult Function(_BreakedState value)? breaked,
    TResult Function(_FinishedState value)? finished,
    required TResult orElse(),
  }) {
    if (breaked != null) {
      return breaked(this);
    }
    return orElse();
  }
}

abstract class _BreakedState extends AttendanceGraphState {
  const factory _BreakedState({required final AttendanceGraph graph}) =
      _$_BreakedState;
  const _BreakedState._() : super._();

  AttendanceGraph get graph;
  @JsonKey(ignore: true)
  _$$_BreakedStateCopyWith<_$_BreakedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishedStateCopyWith<$Res> {
  factory _$$_FinishedStateCopyWith(
          _$_FinishedState value, $Res Function(_$_FinishedState) then) =
      __$$_FinishedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendanceGraph graph});

  $AttendanceGraphCopyWith<$Res> get graph;
}

/// @nodoc
class __$$_FinishedStateCopyWithImpl<$Res>
    extends _$AttendanceGraphStateCopyWithImpl<$Res, _$_FinishedState>
    implements _$$_FinishedStateCopyWith<$Res> {
  __$$_FinishedStateCopyWithImpl(
      _$_FinishedState _value, $Res Function(_$_FinishedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graph = null,
  }) {
    return _then(_$_FinishedState(
      graph: null == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as AttendanceGraph,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceGraphCopyWith<$Res> get graph {
    return $AttendanceGraphCopyWith<$Res>(_value.graph, (value) {
      return _then(_value.copyWith(graph: value));
    });
  }
}

/// @nodoc

class _$_FinishedState extends _FinishedState {
  const _$_FinishedState({required this.graph}) : super._();

  @override
  final AttendanceGraph graph;

  @override
  String toString() {
    return 'AttendanceGraphState.finished(graph: $graph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinishedState &&
            (identical(other.graph, graph) || other.graph == graph));
  }

  @override
  int get hashCode => Object.hash(runtimeType, graph);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinishedStateCopyWith<_$_FinishedState> get copyWith =>
      __$$_FinishedStateCopyWithImpl<_$_FinishedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AttendanceGraph graph) notStarted,
    required TResult Function(AttendanceGraph graph) working,
    required TResult Function(AttendanceGraph graph) breaked,
    required TResult Function(AttendanceGraph graph) finished,
  }) {
    return finished(graph);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AttendanceGraph graph)? notStarted,
    TResult? Function(AttendanceGraph graph)? working,
    TResult? Function(AttendanceGraph graph)? breaked,
    TResult? Function(AttendanceGraph graph)? finished,
  }) {
    return finished?.call(graph);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AttendanceGraph graph)? notStarted,
    TResult Function(AttendanceGraph graph)? working,
    TResult Function(AttendanceGraph graph)? breaked,
    TResult Function(AttendanceGraph graph)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(graph);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NotStartedState value) notStarted,
    required TResult Function(_WorkingState value) working,
    required TResult Function(_BreakedState value) breaked,
    required TResult Function(_FinishedState value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NotStartedState value)? notStarted,
    TResult? Function(_WorkingState value)? working,
    TResult? Function(_BreakedState value)? breaked,
    TResult? Function(_FinishedState value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NotStartedState value)? notStarted,
    TResult Function(_WorkingState value)? working,
    TResult Function(_BreakedState value)? breaked,
    TResult Function(_FinishedState value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _FinishedState extends AttendanceGraphState {
  const factory _FinishedState({required final AttendanceGraph graph}) =
      _$_FinishedState;
  const _FinishedState._() : super._();

  AttendanceGraph get graph;
  @JsonKey(ignore: true)
  _$$_FinishedStateCopyWith<_$_FinishedState> get copyWith =>
      throw _privateConstructorUsedError;
}
