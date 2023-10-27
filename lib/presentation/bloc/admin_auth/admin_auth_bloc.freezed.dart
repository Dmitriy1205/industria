// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(User? user) adminChanged,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(User? user)? adminChanged,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(User? user)? adminChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_AdminChangedEvent value) adminChanged,
    required TResult Function(_LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_AdminChangedEvent value)? adminChanged,
    TResult? Function(_LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_AdminChangedEvent value)? adminChanged,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAuthEventCopyWith<$Res> {
  factory $AdminAuthEventCopyWith(
          AdminAuthEvent value, $Res Function(AdminAuthEvent) then) =
      _$AdminAuthEventCopyWithImpl<$Res, AdminAuthEvent>;
}

/// @nodoc
class _$AdminAuthEventCopyWithImpl<$Res, $Val extends AdminAuthEvent>
    implements $AdminAuthEventCopyWith<$Res> {
  _$AdminAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginEventCopyWith<$Res> {
  factory _$$_LoginEventCopyWith(
          _$_LoginEvent value, $Res Function(_$_LoginEvent) then) =
      __$$_LoginEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginEventCopyWithImpl<$Res>
    extends _$AdminAuthEventCopyWithImpl<$Res, _$_LoginEvent>
    implements _$$_LoginEventCopyWith<$Res> {
  __$$_LoginEventCopyWithImpl(
      _$_LoginEvent _value, $Res Function(_$_LoginEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginEvent implements _LoginEvent {
  const _$_LoginEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AdminAuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEventCopyWith<_$_LoginEvent> get copyWith =>
      __$$_LoginEventCopyWithImpl<_$_LoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(User? user) adminChanged,
    required TResult Function() logout,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(User? user)? adminChanged,
    TResult? Function()? logout,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(User? user)? adminChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_AdminChangedEvent value) adminChanged,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_AdminChangedEvent value)? adminChanged,
    TResult? Function(_LogoutEvent value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_AdminChangedEvent value)? adminChanged,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginEvent implements AdminAuthEvent {
  const factory _LoginEvent(
      {required final String email,
      required final String password}) = _$_LoginEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginEventCopyWith<_$_LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdminChangedEventCopyWith<$Res> {
  factory _$$_AdminChangedEventCopyWith(_$_AdminChangedEvent value,
          $Res Function(_$_AdminChangedEvent) then) =
      __$$_AdminChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$_AdminChangedEventCopyWithImpl<$Res>
    extends _$AdminAuthEventCopyWithImpl<$Res, _$_AdminChangedEvent>
    implements _$$_AdminChangedEventCopyWith<$Res> {
  __$$_AdminChangedEventCopyWithImpl(
      _$_AdminChangedEvent _value, $Res Function(_$_AdminChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_AdminChangedEvent(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_AdminChangedEvent implements _AdminChangedEvent {
  const _$_AdminChangedEvent({required this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AdminAuthEvent.adminChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminChangedEvent &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminChangedEventCopyWith<_$_AdminChangedEvent> get copyWith =>
      __$$_AdminChangedEventCopyWithImpl<_$_AdminChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(User? user) adminChanged,
    required TResult Function() logout,
  }) {
    return adminChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(User? user)? adminChanged,
    TResult? Function()? logout,
  }) {
    return adminChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(User? user)? adminChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (adminChanged != null) {
      return adminChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_AdminChangedEvent value) adminChanged,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return adminChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_AdminChangedEvent value)? adminChanged,
    TResult? Function(_LogoutEvent value)? logout,
  }) {
    return adminChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_AdminChangedEvent value)? adminChanged,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (adminChanged != null) {
      return adminChanged(this);
    }
    return orElse();
  }
}

abstract class _AdminChangedEvent implements AdminAuthEvent {
  const factory _AdminChangedEvent({required final User? user}) =
      _$_AdminChangedEvent;

  User? get user;
  @JsonKey(ignore: true)
  _$$_AdminChangedEventCopyWith<_$_AdminChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutEventCopyWith<$Res> {
  factory _$$_LogoutEventCopyWith(
          _$_LogoutEvent value, $Res Function(_$_LogoutEvent) then) =
      __$$_LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutEventCopyWithImpl<$Res>
    extends _$AdminAuthEventCopyWithImpl<$Res, _$_LogoutEvent>
    implements _$$_LogoutEventCopyWith<$Res> {
  __$$_LogoutEventCopyWithImpl(
      _$_LogoutEvent _value, $Res Function(_$_LogoutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogoutEvent implements _LogoutEvent {
  const _$_LogoutEvent();

  @override
  String toString() {
    return 'AdminAuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(User? user) adminChanged,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(User? user)? adminChanged,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(User? user)? adminChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_AdminChangedEvent value) adminChanged,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_AdminChangedEvent value)? adminChanged,
    TResult? Function(_LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_AdminChangedEvent value)? adminChanged,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutEvent implements AdminAuthEvent {
  const factory _LogoutEvent() = _$_LogoutEvent;
}

/// @nodoc
mixin _$AdminAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedAdminState value) authenticated,
    required TResult Function(_AuthenticationFailedState value)
        authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedAdminState value)? authenticated,
    TResult? Function(_AuthenticationFailedState value)? authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedAdminState value)? authenticated,
    TResult Function(_AuthenticationFailedState value)? authenticationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAuthStateCopyWith<$Res> {
  factory $AdminAuthStateCopyWith(
          AdminAuthState value, $Res Function(AdminAuthState) then) =
      _$AdminAuthStateCopyWithImpl<$Res, AdminAuthState>;
}

/// @nodoc
class _$AdminAuthStateCopyWithImpl<$Res, $Val extends AdminAuthState>
    implements $AdminAuthStateCopyWith<$Res> {
  _$AdminAuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AdminAuthStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState extends _InitialState {
  const _$_InitialState() : super._();

  @override
  String toString() {
    return 'AdminAuthState.initial()';
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
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticationFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticationFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticationFailed,
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
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedAdminState value) authenticated,
    required TResult Function(_AuthenticationFailedState value)
        authenticationFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedAdminState value)? authenticated,
    TResult? Function(_AuthenticationFailedState value)? authenticationFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedAdminState value)? authenticated,
    TResult Function(_AuthenticationFailedState value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends AdminAuthState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_UnauthenticatedStateCopyWith<$Res> {
  factory _$$_UnauthenticatedStateCopyWith(_$_UnauthenticatedState value,
          $Res Function(_$_UnauthenticatedState) then) =
      __$$_UnauthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthenticatedStateCopyWithImpl<$Res>
    extends _$AdminAuthStateCopyWithImpl<$Res, _$_UnauthenticatedState>
    implements _$$_UnauthenticatedStateCopyWith<$Res> {
  __$$_UnauthenticatedStateCopyWithImpl(_$_UnauthenticatedState _value,
      $Res Function(_$_UnauthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnauthenticatedState extends _UnauthenticatedState {
  const _$_UnauthenticatedState() : super._();

  @override
  String toString() {
    return 'AdminAuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticationFailed,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticationFailed,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedAdminState value) authenticated,
    required TResult Function(_AuthenticationFailedState value)
        authenticationFailed,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedAdminState value)? authenticated,
    TResult? Function(_AuthenticationFailedState value)? authenticationFailed,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedAdminState value)? authenticated,
    TResult Function(_AuthenticationFailedState value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticatedState extends AdminAuthState {
  const factory _UnauthenticatedState() = _$_UnauthenticatedState;
  const _UnauthenticatedState._() : super._();
}

/// @nodoc
abstract class _$$_AuthenticatedAdminStateCopyWith<$Res> {
  factory _$$_AuthenticatedAdminStateCopyWith(_$_AuthenticatedAdminState value,
          $Res Function(_$_AuthenticatedAdminState) then) =
      __$$_AuthenticatedAdminStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedAdminStateCopyWithImpl<$Res>
    extends _$AdminAuthStateCopyWithImpl<$Res, _$_AuthenticatedAdminState>
    implements _$$_AuthenticatedAdminStateCopyWith<$Res> {
  __$$_AuthenticatedAdminStateCopyWithImpl(_$_AuthenticatedAdminState _value,
      $Res Function(_$_AuthenticatedAdminState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticatedAdminState extends _AuthenticatedAdminState {
  const _$_AuthenticatedAdminState() : super._();

  @override
  String toString() {
    return 'AdminAuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatedAdminState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticationFailed,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticationFailed,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedAdminState value) authenticated,
    required TResult Function(_AuthenticationFailedState value)
        authenticationFailed,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedAdminState value)? authenticated,
    TResult? Function(_AuthenticationFailedState value)? authenticationFailed,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedAdminState value)? authenticated,
    TResult Function(_AuthenticationFailedState value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedAdminState extends AdminAuthState {
  const factory _AuthenticatedAdminState() = _$_AuthenticatedAdminState;
  const _AuthenticatedAdminState._() : super._();
}

/// @nodoc
abstract class _$$_AuthenticationFailedStateCopyWith<$Res> {
  factory _$$_AuthenticationFailedStateCopyWith(
          _$_AuthenticationFailedState value,
          $Res Function(_$_AuthenticationFailedState) then) =
      __$$_AuthenticationFailedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationFailedStateCopyWithImpl<$Res>
    extends _$AdminAuthStateCopyWithImpl<$Res, _$_AuthenticationFailedState>
    implements _$$_AuthenticationFailedStateCopyWith<$Res> {
  __$$_AuthenticationFailedStateCopyWithImpl(
      _$_AuthenticationFailedState _value,
      $Res Function(_$_AuthenticationFailedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationFailedState extends _AuthenticationFailedState {
  const _$_AuthenticationFailedState() : super._();

  @override
  String toString() {
    return 'AdminAuthState.authenticationFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationFailedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() authenticationFailed,
  }) {
    return authenticationFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? authenticationFailed,
  }) {
    return authenticationFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedAdminState value) authenticated,
    required TResult Function(_AuthenticationFailedState value)
        authenticationFailed,
  }) {
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedAdminState value)? authenticated,
    TResult? Function(_AuthenticationFailedState value)? authenticationFailed,
  }) {
    return authenticationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedAdminState value)? authenticated,
    TResult Function(_AuthenticationFailedState value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationFailedState extends AdminAuthState {
  const factory _AuthenticationFailedState() = _$_AuthenticationFailedState;
  const _AuthenticationFailedState._() : super._();
}
