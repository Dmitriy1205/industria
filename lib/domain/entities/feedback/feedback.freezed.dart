// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
mixin _$Feedback {
  String? get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestampString)
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackCopyWith<Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCopyWith<$Res> {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) then) =
      _$FeedbackCopyWithImpl<$Res, Feedback>;
  @useResult
  $Res call(
      {String? id,
      String email,
      String firstname,
      String lastname,
      String phoneNumber,
      String companyName,
      String description,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestampString)
      DateTime createdAt});
}

/// @nodoc
class _$FeedbackCopyWithImpl<$Res, $Val extends Feedback>
    implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? phoneNumber = null,
    Object? companyName = null,
    Object? description = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedbackCopyWith<$Res> implements $FeedbackCopyWith<$Res> {
  factory _$$_FeedbackCopyWith(
          _$_Feedback value, $Res Function(_$_Feedback) then) =
      __$$_FeedbackCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String email,
      String firstname,
      String lastname,
      String phoneNumber,
      String companyName,
      String description,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestampString)
      DateTime createdAt});
}

/// @nodoc
class __$$_FeedbackCopyWithImpl<$Res>
    extends _$FeedbackCopyWithImpl<$Res, _$_Feedback>
    implements _$$_FeedbackCopyWith<$Res> {
  __$$_FeedbackCopyWithImpl(
      _$_Feedback _value, $Res Function(_$_Feedback) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? phoneNumber = null,
    Object? companyName = null,
    Object? description = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Feedback(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$_Feedback with DiagnosticableTreeMixin implements _Feedback {
  const _$_Feedback(
      {this.id,
      required this.email,
      required this.firstname,
      required this.lastname,
      required this.phoneNumber,
      required this.companyName,
      required this.description,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestampString)
      required this.createdAt});

  factory _$_Feedback.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackFromJson(json);

  @override
  final String? id;
  @override
  final String email;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String phoneNumber;
  @override
  final String companyName;
  @override
  final String description;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestampString)
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Feedback(id: $id, email: $email, firstname: $firstname, lastname: $lastname, phoneNumber: $phoneNumber, companyName: $companyName, description: $description, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Feedback'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('firstname', firstname))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('companyName', companyName))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feedback &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, firstname, lastname,
      phoneNumber, companyName, description, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedbackCopyWith<_$_Feedback> get copyWith =>
      __$$_FeedbackCopyWithImpl<_$_Feedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackToJson(
      this,
    );
  }
}

abstract class _Feedback implements Feedback {
  const factory _Feedback(
      {final String? id,
      required final String email,
      required final String firstname,
      required final String lastname,
      required final String phoneNumber,
      required final String companyName,
      required final String description,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestampString)
      required final DateTime createdAt}) = _$_Feedback;

  factory _Feedback.fromJson(Map<String, dynamic> json) = _$_Feedback.fromJson;

  @override
  String? get id;
  @override
  String get email;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get phoneNumber;
  @override
  String get companyName;
  @override
  String get description;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestampString)
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackCopyWith<_$_Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}
