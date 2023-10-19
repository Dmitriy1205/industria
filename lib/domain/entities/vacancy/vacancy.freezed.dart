// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vacancy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vacancy _$VacancyFromJson(Map<String, dynamic> json) {
  return _Vacancy.fromJson(json);
}

/// @nodoc
mixin _$Vacancy {
  String? get id => throw _privateConstructorUsedError;
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
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestampString)
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VacancyCopyWith<Vacancy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyCopyWith<$Res> {
  factory $VacancyCopyWith(Vacancy value, $Res Function(Vacancy) then) =
      _$VacancyCopyWithImpl<$Res, Vacancy>;
  @useResult
  $Res call(
      {String? id,
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
          toJson: FirebaseTimestampConverters.toTimestampString)
      DateTime createdAt});

  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$VacancyCopyWithImpl<$Res, $Val extends Vacancy>
    implements $VacancyCopyWith<$Res> {
  _$VacancyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_VacancyCopyWith<$Res> implements $VacancyCopyWith<$Res> {
  factory _$$_VacancyCopyWith(
          _$_Vacancy value, $Res Function(_$_Vacancy) then) =
      __$$_VacancyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
          toJson: FirebaseTimestampConverters.toTimestampString)
      DateTime createdAt});

  @override
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$_VacancyCopyWithImpl<$Res>
    extends _$VacancyCopyWithImpl<$Res, _$_Vacancy>
    implements _$$_VacancyCopyWith<$Res> {
  __$$_VacancyCopyWithImpl(_$_Vacancy _value, $Res Function(_$_Vacancy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
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
    return _then(_$_Vacancy(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Vacancy implements _Vacancy {
  const _$_Vacancy(
      {this.id,
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
          toJson: FirebaseTimestampConverters.toTimestampString)
      required this.createdAt})
      : _questions = questions;

  factory _$_Vacancy.fromJson(Map<String, dynamic> json) =>
      _$$_VacancyFromJson(json);

  @override
  final String? id;
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
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestampString)
  final DateTime createdAt;

  @override
  String toString() {
    return 'Vacancy(id: $id, title: $title, jobType: $jobType, companyId: $companyId, companyName: $companyName, area: $area, company: $company, location: $location, city: $city, salary: $salary, description: $description, questions: $questions, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vacancy &&
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
  _$$_VacancyCopyWith<_$_Vacancy> get copyWith =>
      __$$_VacancyCopyWithImpl<_$_Vacancy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VacancyToJson(
      this,
    );
  }
}

abstract class _Vacancy implements Vacancy {
  const factory _Vacancy(
      {final String? id,
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
          toJson: FirebaseTimestampConverters.toTimestampString)
      required final DateTime createdAt}) = _$_Vacancy;

  factory _Vacancy.fromJson(Map<String, dynamic> json) = _$_Vacancy.fromJson;

  @override
  String? get id;
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
      fromJson: FirebaseTimestampConverters.fromTimestamp,
      toJson: FirebaseTimestampConverters.toTimestampString)
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_VacancyCopyWith<_$_Vacancy> get copyWith =>
      throw _privateConstructorUsedError;
}
