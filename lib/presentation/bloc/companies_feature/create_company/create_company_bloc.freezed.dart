// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_company_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateCompanyEvent {
  String get companyName => throw _privateConstructorUsedError;
  String get photoName => throw _privateConstructorUsedError;
  List<int> get photoBytes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String companyName, String photoName, List<int> photoBytes)
        createCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String companyName, String photoName, List<int> photoBytes)?
        createCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String companyName, String photoName, List<int> photoBytes)?
        createCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCompanyEvent value) createCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCompanyEvent value)? createCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCompanyEvent value)? createCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateCompanyEventCopyWith<CreateCompanyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCompanyEventCopyWith<$Res> {
  factory $CreateCompanyEventCopyWith(
          CreateCompanyEvent value, $Res Function(CreateCompanyEvent) then) =
      _$CreateCompanyEventCopyWithImpl<$Res, CreateCompanyEvent>;
  @useResult
  $Res call({String companyName, String photoName, List<int> photoBytes});
}

/// @nodoc
class _$CreateCompanyEventCopyWithImpl<$Res, $Val extends CreateCompanyEvent>
    implements $CreateCompanyEventCopyWith<$Res> {
  _$CreateCompanyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? photoName = null,
    Object? photoBytes = null,
  }) {
    return _then(_value.copyWith(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      photoName: null == photoName
          ? _value.photoName
          : photoName // ignore: cast_nullable_to_non_nullable
              as String,
      photoBytes: null == photoBytes
          ? _value.photoBytes
          : photoBytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateCompanyEventCopyWith<$Res>
    implements $CreateCompanyEventCopyWith<$Res> {
  factory _$$_CreateCompanyEventCopyWith(_$_CreateCompanyEvent value,
          $Res Function(_$_CreateCompanyEvent) then) =
      __$$_CreateCompanyEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyName, String photoName, List<int> photoBytes});
}

/// @nodoc
class __$$_CreateCompanyEventCopyWithImpl<$Res>
    extends _$CreateCompanyEventCopyWithImpl<$Res, _$_CreateCompanyEvent>
    implements _$$_CreateCompanyEventCopyWith<$Res> {
  __$$_CreateCompanyEventCopyWithImpl(
      _$_CreateCompanyEvent _value, $Res Function(_$_CreateCompanyEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? photoName = null,
    Object? photoBytes = null,
  }) {
    return _then(_$_CreateCompanyEvent(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      photoName: null == photoName
          ? _value.photoName
          : photoName // ignore: cast_nullable_to_non_nullable
              as String,
      photoBytes: null == photoBytes
          ? _value._photoBytes
          : photoBytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_CreateCompanyEvent implements _CreateCompanyEvent {
  const _$_CreateCompanyEvent(
      {required this.companyName,
      required this.photoName,
      required final List<int> photoBytes})
      : _photoBytes = photoBytes;

  @override
  final String companyName;
  @override
  final String photoName;
  final List<int> _photoBytes;
  @override
  List<int> get photoBytes {
    if (_photoBytes is EqualUnmodifiableListView) return _photoBytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoBytes);
  }

  @override
  String toString() {
    return 'CreateCompanyEvent.createCompany(companyName: $companyName, photoName: $photoName, photoBytes: $photoBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCompanyEvent &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.photoName, photoName) ||
                other.photoName == photoName) &&
            const DeepCollectionEquality()
                .equals(other._photoBytes, _photoBytes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, photoName,
      const DeepCollectionEquality().hash(_photoBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCompanyEventCopyWith<_$_CreateCompanyEvent> get copyWith =>
      __$$_CreateCompanyEventCopyWithImpl<_$_CreateCompanyEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String companyName, String photoName, List<int> photoBytes)
        createCompany,
  }) {
    return createCompany(companyName, photoName, photoBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String companyName, String photoName, List<int> photoBytes)?
        createCompany,
  }) {
    return createCompany?.call(companyName, photoName, photoBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String companyName, String photoName, List<int> photoBytes)?
        createCompany,
    required TResult orElse(),
  }) {
    if (createCompany != null) {
      return createCompany(companyName, photoName, photoBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCompanyEvent value) createCompany,
  }) {
    return createCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCompanyEvent value)? createCompany,
  }) {
    return createCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCompanyEvent value)? createCompany,
    required TResult orElse(),
  }) {
    if (createCompany != null) {
      return createCompany(this);
    }
    return orElse();
  }
}

abstract class _CreateCompanyEvent implements CreateCompanyEvent {
  const factory _CreateCompanyEvent(
      {required final String companyName,
      required final String photoName,
      required final List<int> photoBytes}) = _$_CreateCompanyEvent;

  @override
  String get companyName;
  @override
  String get photoName;
  @override
  List<int> get photoBytes;
  @override
  @JsonKey(ignore: true)
  _$$_CreateCompanyEventCopyWith<_$_CreateCompanyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateCompanyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successful,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successful,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successful,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCompanyStateCopyWith<$Res> {
  factory $CreateCompanyStateCopyWith(
          CreateCompanyState value, $Res Function(CreateCompanyState) then) =
      _$CreateCompanyStateCopyWithImpl<$Res, CreateCompanyState>;
}

/// @nodoc
class _$CreateCompanyStateCopyWithImpl<$Res, $Val extends CreateCompanyState>
    implements $CreateCompanyStateCopyWith<$Res> {
  _$CreateCompanyStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateCompanyStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'CreateCompanyState.initial()';
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
    required TResult Function() successful,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successful,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successful,
    TResult Function()? error,
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
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements CreateCompanyState {
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
    extends _$CreateCompanyStateCopyWithImpl<$Res, _$_LoadingState>
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
    return 'CreateCompanyState.loading()';
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
    required TResult Function() successful,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successful,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successful,
    TResult Function()? error,
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
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements CreateCompanyState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_SuccessfulStateCopyWith<$Res> {
  factory _$$_SuccessfulStateCopyWith(
          _$_SuccessfulState value, $Res Function(_$_SuccessfulState) then) =
      __$$_SuccessfulStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessfulStateCopyWithImpl<$Res>
    extends _$CreateCompanyStateCopyWithImpl<$Res, _$_SuccessfulState>
    implements _$$_SuccessfulStateCopyWith<$Res> {
  __$$_SuccessfulStateCopyWithImpl(
      _$_SuccessfulState _value, $Res Function(_$_SuccessfulState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessfulState implements _SuccessfulState {
  const _$_SuccessfulState();

  @override
  String toString() {
    return 'CreateCompanyState.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessfulState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successful,
    required TResult Function() error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successful,
    TResult? Function()? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successful,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulState implements CreateCompanyState {
  const factory _SuccessfulState() = _$_SuccessfulState;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$CreateCompanyStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState();

  @override
  String toString() {
    return 'CreateCompanyState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successful,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successful,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successful,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements CreateCompanyState {
  const factory _ErrorState() = _$_ErrorState;
}
