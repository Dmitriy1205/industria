// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_graph_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceGraphKey _$AttendanceGraphKeyFromJson(Map<String, dynamic> json) {
  return _AttendanceGraphKey.fromJson(json);
}

/// @nodoc
mixin _$AttendanceGraphKey {
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get mark => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: AttendanceGraphStatus.fromJson,
      toJson: AttendanceGraphStatus.toJson)
  AttendanceGraphStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceGraphKeyCopyWith<AttendanceGraphKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceGraphKeyCopyWith<$Res> {
  factory $AttendanceGraphKeyCopyWith(
          AttendanceGraphKey value, $Res Function(AttendanceGraphKey) then) =
      _$AttendanceGraphKeyCopyWithImpl<$Res, AttendanceGraphKey>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime mark,
      @JsonKey(
          fromJson: AttendanceGraphStatus.fromJson,
          toJson: AttendanceGraphStatus.toJson)
      AttendanceGraphStatus status});
}

/// @nodoc
class _$AttendanceGraphKeyCopyWithImpl<$Res, $Val extends AttendanceGraphKey>
    implements $AttendanceGraphKeyCopyWith<$Res> {
  _$AttendanceGraphKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mark = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      mark: null == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendanceGraphStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceGraphKeyCopyWith<$Res>
    implements $AttendanceGraphKeyCopyWith<$Res> {
  factory _$$_AttendanceGraphKeyCopyWith(_$_AttendanceGraphKey value,
          $Res Function(_$_AttendanceGraphKey) then) =
      __$$_AttendanceGraphKeyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime mark,
      @JsonKey(
          fromJson: AttendanceGraphStatus.fromJson,
          toJson: AttendanceGraphStatus.toJson)
      AttendanceGraphStatus status});
}

/// @nodoc
class __$$_AttendanceGraphKeyCopyWithImpl<$Res>
    extends _$AttendanceGraphKeyCopyWithImpl<$Res, _$_AttendanceGraphKey>
    implements _$$_AttendanceGraphKeyCopyWith<$Res> {
  __$$_AttendanceGraphKeyCopyWithImpl(
      _$_AttendanceGraphKey _value, $Res Function(_$_AttendanceGraphKey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mark = null,
    Object? status = null,
  }) {
    return _then(_$_AttendanceGraphKey(
      mark: null == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendanceGraphStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceGraphKey implements _AttendanceGraphKey {
  const _$_AttendanceGraphKey(
      {@JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.mark,
      @JsonKey(
          fromJson: AttendanceGraphStatus.fromJson,
          toJson: AttendanceGraphStatus.toJson)
      required this.status});

  factory _$_AttendanceGraphKey.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceGraphKeyFromJson(json);

  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime mark;
  @override
  @JsonKey(
      fromJson: AttendanceGraphStatus.fromJson,
      toJson: AttendanceGraphStatus.toJson)
  final AttendanceGraphStatus status;

  @override
  String toString() {
    return 'AttendanceGraphKey(mark: $mark, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceGraphKey &&
            (identical(other.mark, mark) || other.mark == mark) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mark, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceGraphKeyCopyWith<_$_AttendanceGraphKey> get copyWith =>
      __$$_AttendanceGraphKeyCopyWithImpl<_$_AttendanceGraphKey>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceGraphKeyToJson(
      this,
    );
  }
}

abstract class _AttendanceGraphKey implements AttendanceGraphKey {
  const factory _AttendanceGraphKey(
      {@JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime mark,
      @JsonKey(
          fromJson: AttendanceGraphStatus.fromJson,
          toJson: AttendanceGraphStatus.toJson)
      required final AttendanceGraphStatus status}) = _$_AttendanceGraphKey;

  factory _AttendanceGraphKey.fromJson(Map<String, dynamic> json) =
      _$_AttendanceGraphKey.fromJson;

  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get mark;
  @override
  @JsonKey(
      fromJson: AttendanceGraphStatus.fromJson,
      toJson: AttendanceGraphStatus.toJson)
  AttendanceGraphStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceGraphKeyCopyWith<_$_AttendanceGraphKey> get copyWith =>
      throw _privateConstructorUsedError;
}
