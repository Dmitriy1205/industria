// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_application_documents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobApplicationDocuments _$JobApplicationDocumentsFromJson(
    Map<String, dynamic> json) {
  return _JobApplicationDocuments.fromJson(json);
}

/// @nodoc
mixin _$JobApplicationDocuments {
  String get photo => throw _privateConstructorUsedError;
  String get cv => throw _privateConstructorUsedError;
  List<String> get certificates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobApplicationDocumentsCopyWith<JobApplicationDocuments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobApplicationDocumentsCopyWith<$Res> {
  factory $JobApplicationDocumentsCopyWith(JobApplicationDocuments value,
          $Res Function(JobApplicationDocuments) then) =
      _$JobApplicationDocumentsCopyWithImpl<$Res, JobApplicationDocuments>;
  @useResult
  $Res call({String photo, String cv, List<String> certificates});
}

/// @nodoc
class _$JobApplicationDocumentsCopyWithImpl<$Res,
        $Val extends JobApplicationDocuments>
    implements $JobApplicationDocumentsCopyWith<$Res> {
  _$JobApplicationDocumentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? cv = null,
    Object? certificates = null,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      cv: null == cv
          ? _value.cv
          : cv // ignore: cast_nullable_to_non_nullable
              as String,
      certificates: null == certificates
          ? _value.certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobApplicationDocumentsCopyWith<$Res>
    implements $JobApplicationDocumentsCopyWith<$Res> {
  factory _$$_JobApplicationDocumentsCopyWith(_$_JobApplicationDocuments value,
          $Res Function(_$_JobApplicationDocuments) then) =
      __$$_JobApplicationDocumentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String photo, String cv, List<String> certificates});
}

/// @nodoc
class __$$_JobApplicationDocumentsCopyWithImpl<$Res>
    extends _$JobApplicationDocumentsCopyWithImpl<$Res,
        _$_JobApplicationDocuments>
    implements _$$_JobApplicationDocumentsCopyWith<$Res> {
  __$$_JobApplicationDocumentsCopyWithImpl(_$_JobApplicationDocuments _value,
      $Res Function(_$_JobApplicationDocuments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? cv = null,
    Object? certificates = null,
  }) {
    return _then(_$_JobApplicationDocuments(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      cv: null == cv
          ? _value.cv
          : cv // ignore: cast_nullable_to_non_nullable
              as String,
      certificates: null == certificates
          ? _value._certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobApplicationDocuments implements _JobApplicationDocuments {
  const _$_JobApplicationDocuments(
      {required this.photo,
      required this.cv,
      required final List<String> certificates})
      : _certificates = certificates;

  factory _$_JobApplicationDocuments.fromJson(Map<String, dynamic> json) =>
      _$$_JobApplicationDocumentsFromJson(json);

  @override
  final String photo;
  @override
  final String cv;
  final List<String> _certificates;
  @override
  List<String> get certificates {
    if (_certificates is EqualUnmodifiableListView) return _certificates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certificates);
  }

  @override
  String toString() {
    return 'JobApplicationDocuments(photo: $photo, cv: $cv, certificates: $certificates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobApplicationDocuments &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.cv, cv) || other.cv == cv) &&
            const DeepCollectionEquality()
                .equals(other._certificates, _certificates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, photo, cv,
      const DeepCollectionEquality().hash(_certificates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobApplicationDocumentsCopyWith<_$_JobApplicationDocuments>
      get copyWith =>
          __$$_JobApplicationDocumentsCopyWithImpl<_$_JobApplicationDocuments>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobApplicationDocumentsToJson(
      this,
    );
  }
}

abstract class _JobApplicationDocuments implements JobApplicationDocuments {
  const factory _JobApplicationDocuments(
      {required final String photo,
      required final String cv,
      required final List<String> certificates}) = _$_JobApplicationDocuments;

  factory _JobApplicationDocuments.fromJson(Map<String, dynamic> json) =
      _$_JobApplicationDocuments.fromJson;

  @override
  String get photo;
  @override
  String get cv;
  @override
  List<String> get certificates;
  @override
  @JsonKey(ignore: true)
  _$$_JobApplicationDocumentsCopyWith<_$_JobApplicationDocuments>
      get copyWith => throw _privateConstructorUsedError;
}
