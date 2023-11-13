// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceGraph _$AttendanceGraphFromJson(Map<String, dynamic> json) {
  return _AttendanceGraph.fromJson(json);
}

/// @nodoc
mixin _$AttendanceGraph {
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: AttendanceGraphStatus.fromJson,
      toJson: AttendanceGraphStatus.toJson)
  AttendanceGraphStatus get status => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get totalPause => throw _privateConstructorUsedError;
  List<AttendanceGraphKey> get keys => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceGraphCopyWith<AttendanceGraph> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceGraphCopyWith<$Res> {
  factory $AttendanceGraphCopyWith(
          AttendanceGraph value, $Res Function(AttendanceGraph) then) =
      _$AttendanceGraphCopyWithImpl<$Res, AttendanceGraph>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime date,
      @JsonKey(
          fromJson: AttendanceGraphStatus.fromJson,
          toJson: AttendanceGraphStatus.toJson)
      AttendanceGraphStatus status,
      String userId,
      double totalPause,
      List<AttendanceGraphKey> keys,
      String comment});
}

/// @nodoc
class _$AttendanceGraphCopyWithImpl<$Res, $Val extends AttendanceGraph>
    implements $AttendanceGraphCopyWith<$Res> {
  _$AttendanceGraphCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? status = null,
    Object? userId = null,
    Object? totalPause = null,
    Object? keys = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendanceGraphStatus,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      totalPause: null == totalPause
          ? _value.totalPause
          : totalPause // ignore: cast_nullable_to_non_nullable
              as double,
      keys: null == keys
          ? _value.keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<AttendanceGraphKey>,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceGraphCopyWith<$Res>
    implements $AttendanceGraphCopyWith<$Res> {
  factory _$$_AttendanceGraphCopyWith(
          _$_AttendanceGraph value, $Res Function(_$_AttendanceGraph) then) =
      __$$_AttendanceGraphCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime date,
      @JsonKey(
          fromJson: AttendanceGraphStatus.fromJson,
          toJson: AttendanceGraphStatus.toJson)
      AttendanceGraphStatus status,
      String userId,
      double totalPause,
      List<AttendanceGraphKey> keys,
      String comment});
}

/// @nodoc
class __$$_AttendanceGraphCopyWithImpl<$Res>
    extends _$AttendanceGraphCopyWithImpl<$Res, _$_AttendanceGraph>
    implements _$$_AttendanceGraphCopyWith<$Res> {
  __$$_AttendanceGraphCopyWithImpl(
      _$_AttendanceGraph _value, $Res Function(_$_AttendanceGraph) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? status = null,
    Object? userId = null,
    Object? totalPause = null,
    Object? keys = null,
    Object? comment = null,
  }) {
    return _then(_$_AttendanceGraph(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendanceGraphStatus,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      totalPause: null == totalPause
          ? _value.totalPause
          : totalPause // ignore: cast_nullable_to_non_nullable
              as double,
      keys: null == keys
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<AttendanceGraphKey>,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceGraph extends _AttendanceGraph {
  const _$_AttendanceGraph(
      {@JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.date,
      @JsonKey(
          fromJson: AttendanceGraphStatus.fromJson,
          toJson: AttendanceGraphStatus.toJson)
      required this.status,
      required this.userId,
      this.totalPause = 0.0,
      final List<AttendanceGraphKey> keys = const [],
      this.comment = ""})
      : _keys = keys,
        super._();

  factory _$_AttendanceGraph.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceGraphFromJson(json);

  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime date;
  @override
  @JsonKey(
      fromJson: AttendanceGraphStatus.fromJson,
      toJson: AttendanceGraphStatus.toJson)
  final AttendanceGraphStatus status;
  @override
  final String userId;
  @override
  @JsonKey()
  final double totalPause;
  final List<AttendanceGraphKey> _keys;
  @override
  @JsonKey()
  List<AttendanceGraphKey> get keys {
    if (_keys is EqualUnmodifiableListView) return _keys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keys);
  }

  @override
  @JsonKey()
  final String comment;

  @override
  String toString() {
    return 'AttendanceGraph(date: $date, status: $status, userId: $userId, totalPause: $totalPause, keys: $keys, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceGraph &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalPause, totalPause) ||
                other.totalPause == totalPause) &&
            const DeepCollectionEquality().equals(other._keys, _keys) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, status, userId, totalPause,
      const DeepCollectionEquality().hash(_keys), comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceGraphCopyWith<_$_AttendanceGraph> get copyWith =>
      __$$_AttendanceGraphCopyWithImpl<_$_AttendanceGraph>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceGraphToJson(
      this,
    );
  }
}

abstract class _AttendanceGraph extends AttendanceGraph {
  const factory _AttendanceGraph(
      {@JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime date,
      @JsonKey(
          fromJson: AttendanceGraphStatus.fromJson,
          toJson: AttendanceGraphStatus.toJson)
      required final AttendanceGraphStatus status,
      required final String userId,
      final double totalPause,
      final List<AttendanceGraphKey> keys,
      final String comment}) = _$_AttendanceGraph;
  const _AttendanceGraph._() : super._();

  factory _AttendanceGraph.fromJson(Map<String, dynamic> json) =
      _$_AttendanceGraph.fromJson;

  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get date;
  @override
  @JsonKey(
      fromJson: AttendanceGraphStatus.fromJson,
      toJson: AttendanceGraphStatus.toJson)
  AttendanceGraphStatus get status;
  @override
  String get userId;
  @override
  double get totalPause;
  @override
  List<AttendanceGraphKey> get keys;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceGraphCopyWith<_$_AttendanceGraph> get copyWith =>
      throw _privateConstructorUsedError;
}
