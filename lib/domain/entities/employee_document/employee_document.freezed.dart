// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeDocument _$EmployeeDocumentFromJson(Map<String, dynamic> json) {
  return _EmployeeDocument.fromJson(json);
}

/// @nodoc
mixin _$EmployeeDocument {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeDocumentCopyWith<EmployeeDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDocumentCopyWith<$Res> {
  factory $EmployeeDocumentCopyWith(
          EmployeeDocument value, $Res Function(EmployeeDocument) then) =
      _$EmployeeDocumentCopyWithImpl<$Res, EmployeeDocument>;
  @useResult
  $Res call(
      {String id,
      String name,
      String location,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime createdAt});
}

/// @nodoc
class _$EmployeeDocumentCopyWithImpl<$Res, $Val extends EmployeeDocument>
    implements $EmployeeDocumentCopyWith<$Res> {
  _$EmployeeDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeDocumentCopyWith<$Res>
    implements $EmployeeDocumentCopyWith<$Res> {
  factory _$$_EmployeeDocumentCopyWith(
          _$_EmployeeDocument value, $Res Function(_$_EmployeeDocument) then) =
      __$$_EmployeeDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String location,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime createdAt});
}

/// @nodoc
class __$$_EmployeeDocumentCopyWithImpl<$Res>
    extends _$EmployeeDocumentCopyWithImpl<$Res, _$_EmployeeDocument>
    implements _$$_EmployeeDocumentCopyWith<$Res> {
  __$$_EmployeeDocumentCopyWithImpl(
      _$_EmployeeDocument _value, $Res Function(_$_EmployeeDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? createdAt = null,
  }) {
    return _then(_$_EmployeeDocument(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeDocument implements _EmployeeDocument {
  const _$_EmployeeDocument(
      {required this.id,
      required this.name,
      required this.location,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.createdAt});

  factory _$_EmployeeDocument.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeDocumentFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String location;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime createdAt;

  @override
  String toString() {
    return 'EmployeeDocument(id: $id, name: $name, location: $location, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeDocument &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, location, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeDocumentCopyWith<_$_EmployeeDocument> get copyWith =>
      __$$_EmployeeDocumentCopyWithImpl<_$_EmployeeDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeDocumentToJson(
      this,
    );
  }
}

abstract class _EmployeeDocument implements EmployeeDocument {
  const factory _EmployeeDocument(
      {required final String id,
      required final String name,
      required final String location,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime createdAt}) = _$_EmployeeDocument;

  factory _EmployeeDocument.fromJson(Map<String, dynamic> json) =
      _$_EmployeeDocument.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get location;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeDocumentCopyWith<_$_EmployeeDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
