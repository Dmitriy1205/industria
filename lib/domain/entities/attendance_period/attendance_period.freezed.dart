// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_period.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendancePeriod _$AttendancePeriodFromJson(Map<String, dynamic> json) {
  return _AttendancePeriod.fromJson(json);
}

/// @nodoc
mixin _$AttendancePeriod {
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get date => throw _privateConstructorUsedError;
  num get pause => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get workTimeStart => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get workTimeEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendancePeriodCopyWith<AttendancePeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendancePeriodCopyWith<$Res> {
  factory $AttendancePeriodCopyWith(
          AttendancePeriod value, $Res Function(AttendancePeriod) then) =
      _$AttendancePeriodCopyWithImpl<$Res, AttendancePeriod>;
  @useResult
  $Res call(
      {String comment,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime date,
      num pause,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime workTimeStart,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime workTimeEnd});
}

/// @nodoc
class _$AttendancePeriodCopyWithImpl<$Res, $Val extends AttendancePeriod>
    implements $AttendancePeriodCopyWith<$Res> {
  _$AttendancePeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? date = null,
    Object? pause = null,
    Object? workTimeStart = null,
    Object? workTimeEnd = null,
  }) {
    return _then(_value.copyWith(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pause: null == pause
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as num,
      workTimeStart: null == workTimeStart
          ? _value.workTimeStart
          : workTimeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      workTimeEnd: null == workTimeEnd
          ? _value.workTimeEnd
          : workTimeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendancePeriodCopyWith<$Res>
    implements $AttendancePeriodCopyWith<$Res> {
  factory _$$_AttendancePeriodCopyWith(
          _$_AttendancePeriod value, $Res Function(_$_AttendancePeriod) then) =
      __$$_AttendancePeriodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String comment,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime date,
      num pause,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime workTimeStart,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime workTimeEnd});
}

/// @nodoc
class __$$_AttendancePeriodCopyWithImpl<$Res>
    extends _$AttendancePeriodCopyWithImpl<$Res, _$_AttendancePeriod>
    implements _$$_AttendancePeriodCopyWith<$Res> {
  __$$_AttendancePeriodCopyWithImpl(
      _$_AttendancePeriod _value, $Res Function(_$_AttendancePeriod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? date = null,
    Object? pause = null,
    Object? workTimeStart = null,
    Object? workTimeEnd = null,
  }) {
    return _then(_$_AttendancePeriod(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pause: null == pause
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as num,
      workTimeStart: null == workTimeStart
          ? _value.workTimeStart
          : workTimeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      workTimeEnd: null == workTimeEnd
          ? _value.workTimeEnd
          : workTimeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendancePeriod extends _AttendancePeriod
    with DiagnosticableTreeMixin {
  const _$_AttendancePeriod(
      {required this.comment,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.date,
      required this.pause,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.workTimeStart,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.workTimeEnd})
      : super._();

  factory _$_AttendancePeriod.fromJson(Map<String, dynamic> json) =>
      _$$_AttendancePeriodFromJson(json);

  @override
  final String comment;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime date;
  @override
  final num pause;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime workTimeStart;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime workTimeEnd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AttendancePeriod(comment: $comment, date: $date, pause: $pause, workTimeStart: $workTimeStart, workTimeEnd: $workTimeEnd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AttendancePeriod'))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('pause', pause))
      ..add(DiagnosticsProperty('workTimeStart', workTimeStart))
      ..add(DiagnosticsProperty('workTimeEnd', workTimeEnd));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendancePeriod &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.pause, pause) || other.pause == pause) &&
            (identical(other.workTimeStart, workTimeStart) ||
                other.workTimeStart == workTimeStart) &&
            (identical(other.workTimeEnd, workTimeEnd) ||
                other.workTimeEnd == workTimeEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, comment, date, pause, workTimeStart, workTimeEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendancePeriodCopyWith<_$_AttendancePeriod> get copyWith =>
      __$$_AttendancePeriodCopyWithImpl<_$_AttendancePeriod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendancePeriodToJson(
      this,
    );
  }
}

abstract class _AttendancePeriod extends AttendancePeriod {
  const factory _AttendancePeriod(
      {required final String comment,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime date,
      required final num pause,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime workTimeStart,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime workTimeEnd}) = _$_AttendancePeriod;
  const _AttendancePeriod._() : super._();

  factory _AttendancePeriod.fromJson(Map<String, dynamic> json) =
      _$_AttendancePeriod.fromJson;

  @override
  String get comment;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get date;
  @override
  num get pause;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get workTimeStart;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get workTimeEnd;
  @override
  @JsonKey(ignore: true)
  _$$_AttendancePeriodCopyWith<_$_AttendancePeriod> get copyWith =>
      throw _privateConstructorUsedError;
}
