// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobApplication _$JobApplicationFromJson(Map<String, dynamic> json) {
  return _JobApplication.fromJson(json);
}

/// @nodoc
mixin _$JobApplication {
  String get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get birthday => throw _privateConstructorUsedError;
  String get citizenship => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get availableDate => throw _privateConstructorUsedError;
  JobApplicationDocuments get documents => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp, includeToJson: false)
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  Company get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobApplicationCopyWith<JobApplication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobApplicationCopyWith<$Res> {
  factory $JobApplicationCopyWith(
          JobApplication value, $Res Function(JobApplication) then) =
      _$JobApplicationCopyWithImpl<$Res, JobApplication>;
  @useResult
  $Res call(
      {String id,
      String firstname,
      String lastname,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime birthday,
      String citizenship,
      String gender,
      String address,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime availableDate,
      JobApplicationDocuments documents,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          includeToJson: false)
      DateTime createdAt,
      String companyId,
      Company company});

  $JobApplicationDocumentsCopyWith<$Res> get documents;
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$JobApplicationCopyWithImpl<$Res, $Val extends JobApplication>
    implements $JobApplicationCopyWith<$Res> {
  _$JobApplicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? birthday = null,
    Object? citizenship = null,
    Object? gender = null,
    Object? address = null,
    Object? availableDate = null,
    Object? documents = null,
    Object? createdAt = null,
    Object? companyId = null,
    Object? company = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      citizenship: null == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      availableDate: null == availableDate
          ? _value.availableDate
          : availableDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as JobApplicationDocuments,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JobApplicationDocumentsCopyWith<$Res> get documents {
    return $JobApplicationDocumentsCopyWith<$Res>(_value.documents, (value) {
      return _then(_value.copyWith(documents: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JobApplicationCopyWith<$Res>
    implements $JobApplicationCopyWith<$Res> {
  factory _$$_JobApplicationCopyWith(
          _$_JobApplication value, $Res Function(_$_JobApplication) then) =
      __$$_JobApplicationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstname,
      String lastname,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime birthday,
      String citizenship,
      String gender,
      String address,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      DateTime availableDate,
      JobApplicationDocuments documents,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          includeToJson: false)
      DateTime createdAt,
      String companyId,
      Company company});

  @override
  $JobApplicationDocumentsCopyWith<$Res> get documents;
  @override
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$_JobApplicationCopyWithImpl<$Res>
    extends _$JobApplicationCopyWithImpl<$Res, _$_JobApplication>
    implements _$$_JobApplicationCopyWith<$Res> {
  __$$_JobApplicationCopyWithImpl(
      _$_JobApplication _value, $Res Function(_$_JobApplication) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? birthday = null,
    Object? citizenship = null,
    Object? gender = null,
    Object? address = null,
    Object? availableDate = null,
    Object? documents = null,
    Object? createdAt = null,
    Object? companyId = null,
    Object? company = null,
  }) {
    return _then(_$_JobApplication(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      citizenship: null == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      availableDate: null == availableDate
          ? _value.availableDate
          : availableDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as JobApplicationDocuments,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobApplication extends _JobApplication with DiagnosticableTreeMixin {
  const _$_JobApplication(
      {required this.id,
      required this.firstname,
      required this.lastname,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.birthday,
      required this.citizenship,
      required this.gender,
      required this.address,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required this.availableDate,
      required this.documents,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          includeToJson: false)
      required this.createdAt,
      required this.companyId,
      required this.company})
      : super._();

  factory _$_JobApplication.fromJson(Map<String, dynamic> json) =>
      _$$_JobApplicationFromJson(json);

  @override
  final String id;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime birthday;
  @override
  final String citizenship;
  @override
  final String gender;
  @override
  final String address;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  final DateTime availableDate;
  @override
  final JobApplicationDocuments documents;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp, includeToJson: false)
  final DateTime createdAt;
  @override
  final String companyId;
  @override
  final Company company;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobApplication(id: $id, firstname: $firstname, lastname: $lastname, birthday: $birthday, citizenship: $citizenship, gender: $gender, address: $address, availableDate: $availableDate, documents: $documents, createdAt: $createdAt, companyId: $companyId, company: $company)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobApplication'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstname', firstname))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('birthday', birthday))
      ..add(DiagnosticsProperty('citizenship', citizenship))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('availableDate', availableDate))
      ..add(DiagnosticsProperty('documents', documents))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('companyId', companyId))
      ..add(DiagnosticsProperty('company', company));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobApplication &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.citizenship, citizenship) ||
                other.citizenship == citizenship) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.availableDate, availableDate) ||
                other.availableDate == availableDate) &&
            (identical(other.documents, documents) ||
                other.documents == documents) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstname,
      lastname,
      birthday,
      citizenship,
      gender,
      address,
      availableDate,
      documents,
      createdAt,
      companyId,
      company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobApplicationCopyWith<_$_JobApplication> get copyWith =>
      __$$_JobApplicationCopyWithImpl<_$_JobApplication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobApplicationToJson(
      this,
    );
  }
}

abstract class _JobApplication extends JobApplication {
  const factory _JobApplication(
      {required final String id,
      required final String firstname,
      required final String lastname,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime birthday,
      required final String citizenship,
      required final String gender,
      required final String address,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required final DateTime availableDate,
      required final JobApplicationDocuments documents,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          includeToJson: false)
      required final DateTime createdAt,
      required final String companyId,
      required final Company company}) = _$_JobApplication;
  const _JobApplication._() : super._();

  factory _JobApplication.fromJson(Map<String, dynamic> json) =
      _$_JobApplication.fromJson;

  @override
  String get id;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get birthday;
  @override
  String get citizenship;
  @override
  String get gender;
  @override
  String get address;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestamp)
  DateTime get availableDate;
  @override
  JobApplicationDocuments get documents;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp, includeToJson: false)
  DateTime get createdAt;
  @override
  String get companyId;
  @override
  Company get company;
  @override
  @JsonKey(ignore: true)
  _$$_JobApplicationCopyWith<_$_JobApplication> get copyWith =>
      throw _privateConstructorUsedError;
}
