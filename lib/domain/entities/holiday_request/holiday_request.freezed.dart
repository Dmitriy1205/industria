// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'holiday_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HolidayRequest _$HolidayRequestFromJson(Map<String, dynamic> json) {
  return _HolidayRequest.fromJson(json);
}

/// @nodoc
mixin _$HolidayRequest {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get photoRef => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get unavailableFrom => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get unavailableTo => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolidayRequestCopyWith<HolidayRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayRequestCopyWith<$Res> {
  factory $HolidayRequestCopyWith(
          HolidayRequest value, $Res Function(HolidayRequest) then) =
      _$HolidayRequestCopyWithImpl<$Res, HolidayRequest>;
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String photoRef,
      String reason,
      String id,
      String employeeId,
      String type,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime createdAt,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime unavailableFrom,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime unavailableTo,
      String status,
      bool read});
}

/// @nodoc
class _$HolidayRequestCopyWithImpl<$Res, $Val extends HolidayRequest>
    implements $HolidayRequestCopyWith<$Res> {
  _$HolidayRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? photoRef = null,
    Object? reason = null,
    Object? id = null,
    Object? employeeId = null,
    Object? type = null,
    Object? createdAt = null,
    Object? unavailableFrom = null,
    Object? unavailableTo = null,
    Object? status = null,
    Object? read = null,
  }) {
    return _then(_value.copyWith(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      photoRef: null == photoRef
          ? _value.photoRef
          : photoRef // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unavailableFrom: null == unavailableFrom
          ? _value.unavailableFrom
          : unavailableFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unavailableTo: null == unavailableTo
          ? _value.unavailableTo
          : unavailableTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HolidayRequestCopyWith<$Res>
    implements $HolidayRequestCopyWith<$Res> {
  factory _$$_HolidayRequestCopyWith(
          _$_HolidayRequest value, $Res Function(_$_HolidayRequest) then) =
      __$$_HolidayRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String photoRef,
      String reason,
      String id,
      String employeeId,
      String type,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime createdAt,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime unavailableFrom,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime unavailableTo,
      String status,
      bool read});
}

/// @nodoc
class __$$_HolidayRequestCopyWithImpl<$Res>
    extends _$HolidayRequestCopyWithImpl<$Res, _$_HolidayRequest>
    implements _$$_HolidayRequestCopyWith<$Res> {
  __$$_HolidayRequestCopyWithImpl(
      _$_HolidayRequest _value, $Res Function(_$_HolidayRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? photoRef = null,
    Object? reason = null,
    Object? id = null,
    Object? employeeId = null,
    Object? type = null,
    Object? createdAt = null,
    Object? unavailableFrom = null,
    Object? unavailableTo = null,
    Object? status = null,
    Object? read = null,
  }) {
    return _then(_$_HolidayRequest(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      photoRef: null == photoRef
          ? _value.photoRef
          : photoRef // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unavailableFrom: null == unavailableFrom
          ? _value.unavailableFrom
          : unavailableFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unavailableTo: null == unavailableTo
          ? _value.unavailableTo
          : unavailableTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HolidayRequest
    with DiagnosticableTreeMixin
    implements _HolidayRequest {
  const _$_HolidayRequest(
      {required this.firstname,
      required this.lastname,
      required this.photoRef,
      required this.reason,
      required this.id,
      required this.employeeId,
      this.type = "Holiday request",
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.createdAt,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.unavailableFrom,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.unavailableTo,
      this.status = "Pending",
      this.read = false});

  factory _$_HolidayRequest.fromJson(Map<String, dynamic> json) =>
      _$$_HolidayRequestFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String photoRef;
  @override
  final String reason;
  @override
  final String id;
  @override
  final String employeeId;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime createdAt;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime unavailableFrom;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime unavailableTo;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final bool read;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HolidayRequest(firstname: $firstname, lastname: $lastname, photoRef: $photoRef, reason: $reason, id: $id, employeeId: $employeeId, type: $type, createdAt: $createdAt, unavailableFrom: $unavailableFrom, unavailableTo: $unavailableTo, status: $status, read: $read)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HolidayRequest'))
      ..add(DiagnosticsProperty('firstname', firstname))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('photoRef', photoRef))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('employeeId', employeeId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('unavailableFrom', unavailableFrom))
      ..add(DiagnosticsProperty('unavailableTo', unavailableTo))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('read', read));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HolidayRequest &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.photoRef, photoRef) ||
                other.photoRef == photoRef) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.unavailableFrom, unavailableFrom) ||
                other.unavailableFrom == unavailableFrom) &&
            (identical(other.unavailableTo, unavailableTo) ||
                other.unavailableTo == unavailableTo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.read, read) || other.read == read));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstname,
      lastname,
      photoRef,
      reason,
      id,
      employeeId,
      type,
      createdAt,
      unavailableFrom,
      unavailableTo,
      status,
      read);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HolidayRequestCopyWith<_$_HolidayRequest> get copyWith =>
      __$$_HolidayRequestCopyWithImpl<_$_HolidayRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HolidayRequestToJson(
      this,
    );
  }
}

abstract class _HolidayRequest implements HolidayRequest {
  const factory _HolidayRequest(
      {required final String firstname,
      required final String lastname,
      required final String photoRef,
      required final String reason,
      required final String id,
      required final String employeeId,
      final String type,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime createdAt,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime unavailableFrom,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime unavailableTo,
      final String status,
      final bool read}) = _$_HolidayRequest;

  factory _HolidayRequest.fromJson(Map<String, dynamic> json) =
      _$_HolidayRequest.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get photoRef;
  @override
  String get reason;
  @override
  String get id;
  @override
  String get employeeId;
  @override
  String get type;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get createdAt;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get unavailableFrom;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get unavailableTo;
  @override
  String get status;
  @override
  bool get read;
  @override
  @JsonKey(ignore: true)
  _$$_HolidayRequestCopyWith<_$_HolidayRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
