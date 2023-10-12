// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_requests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactRequests _$ContactRequestsFromJson(Map<String, dynamic> json) {
  return _ContactRequests.fromJson(json);
}

/// @nodoc
mixin _$ContactRequests {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool? get read => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactRequestsCopyWith<ContactRequests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactRequestsCopyWith<$Res> {
  factory $ContactRequestsCopyWith(
          ContactRequests value, $Res Function(ContactRequests) then) =
      _$ContactRequestsCopyWithImpl<$Res, ContactRequests>;
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String companyName,
      String phoneNumber,
      String email,
      String description,
      bool? read});
}

/// @nodoc
class _$ContactRequestsCopyWithImpl<$Res, $Val extends ContactRequests>
    implements $ContactRequestsCopyWith<$Res> {
  _$ContactRequestsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? companyName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? description = null,
    Object? read = freezed,
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
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactRequestsCopyWith<$Res>
    implements $ContactRequestsCopyWith<$Res> {
  factory _$$_ContactRequestsCopyWith(
          _$_ContactRequests value, $Res Function(_$_ContactRequests) then) =
      __$$_ContactRequestsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String companyName,
      String phoneNumber,
      String email,
      String description,
      bool? read});
}

/// @nodoc
class __$$_ContactRequestsCopyWithImpl<$Res>
    extends _$ContactRequestsCopyWithImpl<$Res, _$_ContactRequests>
    implements _$$_ContactRequestsCopyWith<$Res> {
  __$$_ContactRequestsCopyWithImpl(
      _$_ContactRequests _value, $Res Function(_$_ContactRequests) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? companyName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? description = null,
    Object? read = freezed,
  }) {
    return _then(_$_ContactRequests(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactRequests extends _ContactRequests {
  const _$_ContactRequests(
      {required this.firstname,
      required this.lastname,
      required this.companyName,
      required this.phoneNumber,
      required this.email,
      required this.description,
      this.read})
      : super._();

  factory _$_ContactRequests.fromJson(Map<String, dynamic> json) =>
      _$$_ContactRequestsFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String companyName;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String description;
  @override
  final bool? read;

  @override
  String toString() {
    return 'ContactRequests(firstname: $firstname, lastname: $lastname, companyName: $companyName, phoneNumber: $phoneNumber, email: $email, description: $description, read: $read)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactRequests &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.read, read) || other.read == read));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstname, lastname, companyName,
      phoneNumber, email, description, read);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactRequestsCopyWith<_$_ContactRequests> get copyWith =>
      __$$_ContactRequestsCopyWithImpl<_$_ContactRequests>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactRequestsToJson(
      this,
    );
  }
}

abstract class _ContactRequests extends ContactRequests {
  const factory _ContactRequests(
      {required final String firstname,
      required final String lastname,
      required final String companyName,
      required final String phoneNumber,
      required final String email,
      required final String description,
      final bool? read}) = _$_ContactRequests;
  const _ContactRequests._() : super._();

  factory _ContactRequests.fromJson(Map<String, dynamic> json) =
      _$_ContactRequests.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get companyName;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get description;
  @override
  bool? get read;
  @override
  @JsonKey(ignore: true)
  _$$_ContactRequestsCopyWith<_$_ContactRequests> get copyWith =>
      throw _privateConstructorUsedError;
}
