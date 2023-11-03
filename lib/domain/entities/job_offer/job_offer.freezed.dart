// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobOffer _$JobOfferFromJson(Map<String, dynamic> json) {
  return _JobOffer.fromJson(json);
}

/// @nodoc
mixin _$JobOffer {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get jobType => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  Company get company => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get salary => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get questions => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp, includeToJson: false)
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobOfferCopyWith<JobOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobOfferCopyWith<$Res> {
  factory $JobOfferCopyWith(JobOffer value, $Res Function(JobOffer) then) =
      _$JobOfferCopyWithImpl<$Res, JobOffer>;
  @useResult
  $Res call(
      {String id,
      String title,
      String jobType,
      String companyId,
      String companyName,
      String area,
      Company company,
      String location,
      String city,
      String salary,
      String description,
      List<String> questions,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          includeToJson: false)
      DateTime createdAt});

  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$JobOfferCopyWithImpl<$Res, $Val extends JobOffer>
    implements $JobOfferCopyWith<$Res> {
  _$JobOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? jobType = null,
    Object? companyId = null,
    Object? companyName = null,
    Object? area = null,
    Object? company = null,
    Object? location = null,
    Object? city = null,
    Object? salary = null,
    Object? description = null,
    Object? questions = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      jobType: null == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
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
abstract class _$$_JobOfferCopyWith<$Res> implements $JobOfferCopyWith<$Res> {
  factory _$$_JobOfferCopyWith(
          _$_JobOffer value, $Res Function(_$_JobOffer) then) =
      __$$_JobOfferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String jobType,
      String companyId,
      String companyName,
      String area,
      Company company,
      String location,
      String city,
      String salary,
      String description,
      List<String> questions,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          includeToJson: false)
      DateTime createdAt});

  @override
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$_JobOfferCopyWithImpl<$Res>
    extends _$JobOfferCopyWithImpl<$Res, _$_JobOffer>
    implements _$$_JobOfferCopyWith<$Res> {
  __$$_JobOfferCopyWithImpl(
      _$_JobOffer _value, $Res Function(_$_JobOffer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? jobType = null,
    Object? companyId = null,
    Object? companyName = null,
    Object? area = null,
    Object? company = null,
    Object? location = null,
    Object? city = null,
    Object? salary = null,
    Object? description = null,
    Object? questions = null,
    Object? createdAt = null,
  }) {
    return _then(_$_JobOffer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      jobType: null == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobOffer extends _JobOffer with DiagnosticableTreeMixin {
  const _$_JobOffer(
      {required this.id,
      required this.title,
      required this.jobType,
      required this.companyId,
      required this.companyName,
      required this.area,
      required this.company,
      required this.location,
      required this.city,
      required this.salary,
      required this.description,
      final List<String> questions = const [],
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          includeToJson: false)
      required this.createdAt})
      : _questions = questions,
        super._();

  factory _$_JobOffer.fromJson(Map<String, dynamic> json) =>
      _$$_JobOfferFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String jobType;
  @override
  final String companyId;
  @override
  final String companyName;
  @override
  final String area;
  @override
  final Company company;
  @override
  final String location;
  @override
  final String city;
  @override
  final String salary;
  @override
  final String description;
  final List<String> _questions;
  @override
  @JsonKey()
  List<String> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp, includeToJson: false)
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobOffer(id: $id, title: $title, jobType: $jobType, companyId: $companyId, companyName: $companyName, area: $area, company: $company, location: $location, city: $city, salary: $salary, description: $description, questions: $questions, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobOffer'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('jobType', jobType))
      ..add(DiagnosticsProperty('companyId', companyId))
      ..add(DiagnosticsProperty('companyName', companyName))
      ..add(DiagnosticsProperty('area', area))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('salary', salary))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('questions', questions))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobOffer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.jobType, jobType) || other.jobType == jobType) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      jobType,
      companyId,
      companyName,
      area,
      company,
      location,
      city,
      salary,
      description,
      const DeepCollectionEquality().hash(_questions),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobOfferCopyWith<_$_JobOffer> get copyWith =>
      __$$_JobOfferCopyWithImpl<_$_JobOffer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobOfferToJson(
      this,
    );
  }
}

abstract class _JobOffer extends JobOffer {
  const factory _JobOffer(
      {required final String id,
      required final String title,
      required final String jobType,
      required final String companyId,
      required final String companyName,
      required final String area,
      required final Company company,
      required final String location,
      required final String city,
      required final String salary,
      required final String description,
      final List<String> questions,
      @JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          includeToJson: false)
      required final DateTime createdAt}) = _$_JobOffer;
  const _JobOffer._() : super._();

  factory _JobOffer.fromJson(Map<String, dynamic> json) = _$_JobOffer.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get jobType;
  @override
  String get companyId;
  @override
  String get companyName;
  @override
  String get area;
  @override
  Company get company;
  @override
  String get location;
  @override
  String get city;
  @override
  String get salary;
  @override
  String get description;
  @override
  List<String> get questions;
  @override
  @JsonKey(
      fromJson: FirebaseTimestampConverters.fromTimestamp, includeToJson: false)
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_JobOfferCopyWith<_$_JobOffer> get copyWith =>
      throw _privateConstructorUsedError;
}
