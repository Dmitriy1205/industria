// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_update_company_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminUpdateCompanyEvent {
  String get uid => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String? get photoName => throw _privateConstructorUsedError;
  List<int>? get photoBytes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid, String companyName, String? photoName,
            List<int>? photoBytes)
        updateCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid, String companyName, String? photoName,
            List<int>? photoBytes)?
        updateCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid, String companyName, String? photoName,
            List<int>? photoBytes)?
        updateCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCompanyEvent value) updateCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCompanyEvent value)? updateCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCompanyEvent value)? updateCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminUpdateCompanyEventCopyWith<AdminUpdateCompanyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminUpdateCompanyEventCopyWith<$Res> {
  factory $AdminUpdateCompanyEventCopyWith(AdminUpdateCompanyEvent value,
          $Res Function(AdminUpdateCompanyEvent) then) =
      _$AdminUpdateCompanyEventCopyWithImpl<$Res, AdminUpdateCompanyEvent>;
  @useResult
  $Res call(
      {String uid,
      String companyName,
      String? photoName,
      List<int>? photoBytes});
}

/// @nodoc
class _$AdminUpdateCompanyEventCopyWithImpl<$Res,
        $Val extends AdminUpdateCompanyEvent>
    implements $AdminUpdateCompanyEventCopyWith<$Res> {
  _$AdminUpdateCompanyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? companyName = null,
    Object? photoName = freezed,
    Object? photoBytes = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      photoName: freezed == photoName
          ? _value.photoName
          : photoName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoBytes: freezed == photoBytes
          ? _value.photoBytes
          : photoBytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateCompanyEventCopyWith<$Res>
    implements $AdminUpdateCompanyEventCopyWith<$Res> {
  factory _$$_UpdateCompanyEventCopyWith(_$_UpdateCompanyEvent value,
          $Res Function(_$_UpdateCompanyEvent) then) =
      __$$_UpdateCompanyEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String companyName,
      String? photoName,
      List<int>? photoBytes});
}

/// @nodoc
class __$$_UpdateCompanyEventCopyWithImpl<$Res>
    extends _$AdminUpdateCompanyEventCopyWithImpl<$Res, _$_UpdateCompanyEvent>
    implements _$$_UpdateCompanyEventCopyWith<$Res> {
  __$$_UpdateCompanyEventCopyWithImpl(
      _$_UpdateCompanyEvent _value, $Res Function(_$_UpdateCompanyEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? companyName = null,
    Object? photoName = freezed,
    Object? photoBytes = freezed,
  }) {
    return _then(_$_UpdateCompanyEvent(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      photoName: freezed == photoName
          ? _value.photoName
          : photoName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoBytes: freezed == photoBytes
          ? _value._photoBytes
          : photoBytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$_UpdateCompanyEvent implements _UpdateCompanyEvent {
  const _$_UpdateCompanyEvent(
      {required this.uid,
      required this.companyName,
      required this.photoName,
      required final List<int>? photoBytes})
      : _photoBytes = photoBytes;

  @override
  final String uid;
  @override
  final String companyName;
  @override
  final String? photoName;
  final List<int>? _photoBytes;
  @override
  List<int>? get photoBytes {
    final value = _photoBytes;
    if (value == null) return null;
    if (_photoBytes is EqualUnmodifiableListView) return _photoBytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AdminUpdateCompanyEvent.updateCompany(uid: $uid, companyName: $companyName, photoName: $photoName, photoBytes: $photoBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCompanyEvent &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.photoName, photoName) ||
                other.photoName == photoName) &&
            const DeepCollectionEquality()
                .equals(other._photoBytes, _photoBytes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, companyName, photoName,
      const DeepCollectionEquality().hash(_photoBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCompanyEventCopyWith<_$_UpdateCompanyEvent> get copyWith =>
      __$$_UpdateCompanyEventCopyWithImpl<_$_UpdateCompanyEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid, String companyName, String? photoName,
            List<int>? photoBytes)
        updateCompany,
  }) {
    return updateCompany(uid, companyName, photoName, photoBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid, String companyName, String? photoName,
            List<int>? photoBytes)?
        updateCompany,
  }) {
    return updateCompany?.call(uid, companyName, photoName, photoBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid, String companyName, String? photoName,
            List<int>? photoBytes)?
        updateCompany,
    required TResult orElse(),
  }) {
    if (updateCompany != null) {
      return updateCompany(uid, companyName, photoName, photoBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCompanyEvent value) updateCompany,
  }) {
    return updateCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCompanyEvent value)? updateCompany,
  }) {
    return updateCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCompanyEvent value)? updateCompany,
    required TResult orElse(),
  }) {
    if (updateCompany != null) {
      return updateCompany(this);
    }
    return orElse();
  }
}

abstract class _UpdateCompanyEvent implements AdminUpdateCompanyEvent {
  const factory _UpdateCompanyEvent(
      {required final String uid,
      required final String companyName,
      required final String? photoName,
      required final List<int>? photoBytes}) = _$_UpdateCompanyEvent;

  @override
  String get uid;
  @override
  String get companyName;
  @override
  String? get photoName;
  @override
  List<int>? get photoBytes;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCompanyEventCopyWith<_$_UpdateCompanyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminUpdateCompanyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String code) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String code)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String code)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_Failtate value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_Failtate value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_Failtate value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminUpdateCompanyStateCopyWith<$Res> {
  factory $AdminUpdateCompanyStateCopyWith(AdminUpdateCompanyState value,
          $Res Function(AdminUpdateCompanyState) then) =
      _$AdminUpdateCompanyStateCopyWithImpl<$Res, AdminUpdateCompanyState>;
}

/// @nodoc
class _$AdminUpdateCompanyStateCopyWithImpl<$Res,
        $Val extends AdminUpdateCompanyState>
    implements $AdminUpdateCompanyStateCopyWith<$Res> {
  _$AdminUpdateCompanyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$AdminUpdateCompanyStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'AdminUpdateCompanyState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String code) fail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String code)? fail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String code)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_Failtate value) fail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_Failtate value)? fail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_Failtate value)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AdminUpdateCompanyState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$AdminUpdateCompanyStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'AdminUpdateCompanyState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String code) fail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String code)? fail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String code)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_Failtate value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_Failtate value)? fail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_Failtate value)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AdminUpdateCompanyState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$AdminUpdateCompanyStateCopyWithImpl<$Res, _$_SuccessState>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState();

  @override
  String toString() {
    return 'AdminUpdateCompanyState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String code) fail,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String code)? fail,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String code)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_Failtate value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_Failtate value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_Failtate value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements AdminUpdateCompanyState {
  const factory _SuccessState() = _$_SuccessState;
}

/// @nodoc
abstract class _$$_FailtateCopyWith<$Res> {
  factory _$$_FailtateCopyWith(
          _$_Failtate value, $Res Function(_$_Failtate) then) =
      __$$_FailtateCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_FailtateCopyWithImpl<$Res>
    extends _$AdminUpdateCompanyStateCopyWithImpl<$Res, _$_Failtate>
    implements _$$_FailtateCopyWith<$Res> {
  __$$_FailtateCopyWithImpl(
      _$_Failtate _value, $Res Function(_$_Failtate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_Failtate(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failtate implements _Failtate {
  const _$_Failtate({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'AdminUpdateCompanyState.fail(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failtate &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailtateCopyWith<_$_Failtate> get copyWith =>
      __$$_FailtateCopyWithImpl<_$_Failtate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String code) fail,
  }) {
    return fail(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String code)? fail,
  }) {
    return fail?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String code)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_Failtate value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_Failtate value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_Failtate value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Failtate implements AdminUpdateCompanyState {
  const factory _Failtate({required final String code}) = _$_Failtate;

  String get code;
  @JsonKey(ignore: true)
  _$$_FailtateCopyWith<_$_Failtate> get copyWith =>
      throw _privateConstructorUsedError;
}
