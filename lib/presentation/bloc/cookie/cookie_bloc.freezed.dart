// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cookie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CookieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() acceptAll,
    required TResult Function(List<Cookies> acceptedCookies) acceptSelected,
    required TResult Function() denyAll,
    required TResult Function() show,
    required TResult Function() hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? acceptAll,
    TResult? Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult? Function()? denyAll,
    TResult? Function()? show,
    TResult? Function()? hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? acceptAll,
    TResult Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult Function()? denyAll,
    TResult Function()? show,
    TResult Function()? hide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptAllEvent value) acceptAll,
    required TResult Function(_AcceptSelectedEvent value) acceptSelected,
    required TResult Function(_DenyAllEvent value) denyAll,
    required TResult Function(_ShowEvent value) show,
    required TResult Function(_HideEvent value) hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptAllEvent value)? acceptAll,
    TResult? Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult? Function(_DenyAllEvent value)? denyAll,
    TResult? Function(_ShowEvent value)? show,
    TResult? Function(_HideEvent value)? hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptAllEvent value)? acceptAll,
    TResult Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult Function(_DenyAllEvent value)? denyAll,
    TResult Function(_ShowEvent value)? show,
    TResult Function(_HideEvent value)? hide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookieEventCopyWith<$Res> {
  factory $CookieEventCopyWith(
          CookieEvent value, $Res Function(CookieEvent) then) =
      _$CookieEventCopyWithImpl<$Res, CookieEvent>;
}

/// @nodoc
class _$CookieEventCopyWithImpl<$Res, $Val extends CookieEvent>
    implements $CookieEventCopyWith<$Res> {
  _$CookieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AcceptAllEventCopyWith<$Res> {
  factory _$$_AcceptAllEventCopyWith(
          _$_AcceptAllEvent value, $Res Function(_$_AcceptAllEvent) then) =
      __$$_AcceptAllEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AcceptAllEventCopyWithImpl<$Res>
    extends _$CookieEventCopyWithImpl<$Res, _$_AcceptAllEvent>
    implements _$$_AcceptAllEventCopyWith<$Res> {
  __$$_AcceptAllEventCopyWithImpl(
      _$_AcceptAllEvent _value, $Res Function(_$_AcceptAllEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AcceptAllEvent implements _AcceptAllEvent {
  const _$_AcceptAllEvent();

  @override
  String toString() {
    return 'CookieEvent.acceptAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AcceptAllEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() acceptAll,
    required TResult Function(List<Cookies> acceptedCookies) acceptSelected,
    required TResult Function() denyAll,
    required TResult Function() show,
    required TResult Function() hide,
  }) {
    return acceptAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? acceptAll,
    TResult? Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult? Function()? denyAll,
    TResult? Function()? show,
    TResult? Function()? hide,
  }) {
    return acceptAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? acceptAll,
    TResult Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult Function()? denyAll,
    TResult Function()? show,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (acceptAll != null) {
      return acceptAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptAllEvent value) acceptAll,
    required TResult Function(_AcceptSelectedEvent value) acceptSelected,
    required TResult Function(_DenyAllEvent value) denyAll,
    required TResult Function(_ShowEvent value) show,
    required TResult Function(_HideEvent value) hide,
  }) {
    return acceptAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptAllEvent value)? acceptAll,
    TResult? Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult? Function(_DenyAllEvent value)? denyAll,
    TResult? Function(_ShowEvent value)? show,
    TResult? Function(_HideEvent value)? hide,
  }) {
    return acceptAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptAllEvent value)? acceptAll,
    TResult Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult Function(_DenyAllEvent value)? denyAll,
    TResult Function(_ShowEvent value)? show,
    TResult Function(_HideEvent value)? hide,
    required TResult orElse(),
  }) {
    if (acceptAll != null) {
      return acceptAll(this);
    }
    return orElse();
  }
}

abstract class _AcceptAllEvent implements CookieEvent {
  const factory _AcceptAllEvent() = _$_AcceptAllEvent;
}

/// @nodoc
abstract class _$$_AcceptSelectedEventCopyWith<$Res> {
  factory _$$_AcceptSelectedEventCopyWith(_$_AcceptSelectedEvent value,
          $Res Function(_$_AcceptSelectedEvent) then) =
      __$$_AcceptSelectedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Cookies> acceptedCookies});
}

/// @nodoc
class __$$_AcceptSelectedEventCopyWithImpl<$Res>
    extends _$CookieEventCopyWithImpl<$Res, _$_AcceptSelectedEvent>
    implements _$$_AcceptSelectedEventCopyWith<$Res> {
  __$$_AcceptSelectedEventCopyWithImpl(_$_AcceptSelectedEvent _value,
      $Res Function(_$_AcceptSelectedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptedCookies = null,
  }) {
    return _then(_$_AcceptSelectedEvent(
      acceptedCookies: null == acceptedCookies
          ? _value._acceptedCookies
          : acceptedCookies // ignore: cast_nullable_to_non_nullable
              as List<Cookies>,
    ));
  }
}

/// @nodoc

class _$_AcceptSelectedEvent implements _AcceptSelectedEvent {
  const _$_AcceptSelectedEvent({required final List<Cookies> acceptedCookies})
      : _acceptedCookies = acceptedCookies;

  final List<Cookies> _acceptedCookies;
  @override
  List<Cookies> get acceptedCookies {
    if (_acceptedCookies is EqualUnmodifiableListView) return _acceptedCookies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_acceptedCookies);
  }

  @override
  String toString() {
    return 'CookieEvent.acceptSelected(acceptedCookies: $acceptedCookies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptSelectedEvent &&
            const DeepCollectionEquality()
                .equals(other._acceptedCookies, _acceptedCookies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_acceptedCookies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptSelectedEventCopyWith<_$_AcceptSelectedEvent> get copyWith =>
      __$$_AcceptSelectedEventCopyWithImpl<_$_AcceptSelectedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() acceptAll,
    required TResult Function(List<Cookies> acceptedCookies) acceptSelected,
    required TResult Function() denyAll,
    required TResult Function() show,
    required TResult Function() hide,
  }) {
    return acceptSelected(acceptedCookies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? acceptAll,
    TResult? Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult? Function()? denyAll,
    TResult? Function()? show,
    TResult? Function()? hide,
  }) {
    return acceptSelected?.call(acceptedCookies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? acceptAll,
    TResult Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult Function()? denyAll,
    TResult Function()? show,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (acceptSelected != null) {
      return acceptSelected(acceptedCookies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptAllEvent value) acceptAll,
    required TResult Function(_AcceptSelectedEvent value) acceptSelected,
    required TResult Function(_DenyAllEvent value) denyAll,
    required TResult Function(_ShowEvent value) show,
    required TResult Function(_HideEvent value) hide,
  }) {
    return acceptSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptAllEvent value)? acceptAll,
    TResult? Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult? Function(_DenyAllEvent value)? denyAll,
    TResult? Function(_ShowEvent value)? show,
    TResult? Function(_HideEvent value)? hide,
  }) {
    return acceptSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptAllEvent value)? acceptAll,
    TResult Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult Function(_DenyAllEvent value)? denyAll,
    TResult Function(_ShowEvent value)? show,
    TResult Function(_HideEvent value)? hide,
    required TResult orElse(),
  }) {
    if (acceptSelected != null) {
      return acceptSelected(this);
    }
    return orElse();
  }
}

abstract class _AcceptSelectedEvent implements CookieEvent {
  const factory _AcceptSelectedEvent(
      {required final List<Cookies> acceptedCookies}) = _$_AcceptSelectedEvent;

  List<Cookies> get acceptedCookies;
  @JsonKey(ignore: true)
  _$$_AcceptSelectedEventCopyWith<_$_AcceptSelectedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DenyAllEventCopyWith<$Res> {
  factory _$$_DenyAllEventCopyWith(
          _$_DenyAllEvent value, $Res Function(_$_DenyAllEvent) then) =
      __$$_DenyAllEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DenyAllEventCopyWithImpl<$Res>
    extends _$CookieEventCopyWithImpl<$Res, _$_DenyAllEvent>
    implements _$$_DenyAllEventCopyWith<$Res> {
  __$$_DenyAllEventCopyWithImpl(
      _$_DenyAllEvent _value, $Res Function(_$_DenyAllEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DenyAllEvent implements _DenyAllEvent {
  const _$_DenyAllEvent();

  @override
  String toString() {
    return 'CookieEvent.denyAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DenyAllEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() acceptAll,
    required TResult Function(List<Cookies> acceptedCookies) acceptSelected,
    required TResult Function() denyAll,
    required TResult Function() show,
    required TResult Function() hide,
  }) {
    return denyAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? acceptAll,
    TResult? Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult? Function()? denyAll,
    TResult? Function()? show,
    TResult? Function()? hide,
  }) {
    return denyAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? acceptAll,
    TResult Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult Function()? denyAll,
    TResult Function()? show,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (denyAll != null) {
      return denyAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptAllEvent value) acceptAll,
    required TResult Function(_AcceptSelectedEvent value) acceptSelected,
    required TResult Function(_DenyAllEvent value) denyAll,
    required TResult Function(_ShowEvent value) show,
    required TResult Function(_HideEvent value) hide,
  }) {
    return denyAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptAllEvent value)? acceptAll,
    TResult? Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult? Function(_DenyAllEvent value)? denyAll,
    TResult? Function(_ShowEvent value)? show,
    TResult? Function(_HideEvent value)? hide,
  }) {
    return denyAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptAllEvent value)? acceptAll,
    TResult Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult Function(_DenyAllEvent value)? denyAll,
    TResult Function(_ShowEvent value)? show,
    TResult Function(_HideEvent value)? hide,
    required TResult orElse(),
  }) {
    if (denyAll != null) {
      return denyAll(this);
    }
    return orElse();
  }
}

abstract class _DenyAllEvent implements CookieEvent {
  const factory _DenyAllEvent() = _$_DenyAllEvent;
}

/// @nodoc
abstract class _$$_ShowEventCopyWith<$Res> {
  factory _$$_ShowEventCopyWith(
          _$_ShowEvent value, $Res Function(_$_ShowEvent) then) =
      __$$_ShowEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowEventCopyWithImpl<$Res>
    extends _$CookieEventCopyWithImpl<$Res, _$_ShowEvent>
    implements _$$_ShowEventCopyWith<$Res> {
  __$$_ShowEventCopyWithImpl(
      _$_ShowEvent _value, $Res Function(_$_ShowEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShowEvent implements _ShowEvent {
  const _$_ShowEvent();

  @override
  String toString() {
    return 'CookieEvent.show()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() acceptAll,
    required TResult Function(List<Cookies> acceptedCookies) acceptSelected,
    required TResult Function() denyAll,
    required TResult Function() show,
    required TResult Function() hide,
  }) {
    return show();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? acceptAll,
    TResult? Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult? Function()? denyAll,
    TResult? Function()? show,
    TResult? Function()? hide,
  }) {
    return show?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? acceptAll,
    TResult Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult Function()? denyAll,
    TResult Function()? show,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptAllEvent value) acceptAll,
    required TResult Function(_AcceptSelectedEvent value) acceptSelected,
    required TResult Function(_DenyAllEvent value) denyAll,
    required TResult Function(_ShowEvent value) show,
    required TResult Function(_HideEvent value) hide,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptAllEvent value)? acceptAll,
    TResult? Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult? Function(_DenyAllEvent value)? denyAll,
    TResult? Function(_ShowEvent value)? show,
    TResult? Function(_HideEvent value)? hide,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptAllEvent value)? acceptAll,
    TResult Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult Function(_DenyAllEvent value)? denyAll,
    TResult Function(_ShowEvent value)? show,
    TResult Function(_HideEvent value)? hide,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class _ShowEvent implements CookieEvent {
  const factory _ShowEvent() = _$_ShowEvent;
}

/// @nodoc
abstract class _$$_HideEventCopyWith<$Res> {
  factory _$$_HideEventCopyWith(
          _$_HideEvent value, $Res Function(_$_HideEvent) then) =
      __$$_HideEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HideEventCopyWithImpl<$Res>
    extends _$CookieEventCopyWithImpl<$Res, _$_HideEvent>
    implements _$$_HideEventCopyWith<$Res> {
  __$$_HideEventCopyWithImpl(
      _$_HideEvent _value, $Res Function(_$_HideEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HideEvent implements _HideEvent {
  const _$_HideEvent();

  @override
  String toString() {
    return 'CookieEvent.hide()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HideEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() acceptAll,
    required TResult Function(List<Cookies> acceptedCookies) acceptSelected,
    required TResult Function() denyAll,
    required TResult Function() show,
    required TResult Function() hide,
  }) {
    return hide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? acceptAll,
    TResult? Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult? Function()? denyAll,
    TResult? Function()? show,
    TResult? Function()? hide,
  }) {
    return hide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? acceptAll,
    TResult Function(List<Cookies> acceptedCookies)? acceptSelected,
    TResult Function()? denyAll,
    TResult Function()? show,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptAllEvent value) acceptAll,
    required TResult Function(_AcceptSelectedEvent value) acceptSelected,
    required TResult Function(_DenyAllEvent value) denyAll,
    required TResult Function(_ShowEvent value) show,
    required TResult Function(_HideEvent value) hide,
  }) {
    return hide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptAllEvent value)? acceptAll,
    TResult? Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult? Function(_DenyAllEvent value)? denyAll,
    TResult? Function(_ShowEvent value)? show,
    TResult? Function(_HideEvent value)? hide,
  }) {
    return hide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptAllEvent value)? acceptAll,
    TResult Function(_AcceptSelectedEvent value)? acceptSelected,
    TResult Function(_DenyAllEvent value)? denyAll,
    TResult Function(_ShowEvent value)? show,
    TResult Function(_HideEvent value)? hide,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class _HideEvent implements CookieEvent {
  const factory _HideEvent() = _$_HideEvent;
}

/// @nodoc
mixin _$CookieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showDialog) undefined,
    required TResult Function(List<Cookies> acceptedCookies) resolved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showDialog)? undefined,
    TResult? Function(List<Cookies> acceptedCookies)? resolved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showDialog)? undefined,
    TResult Function(List<Cookies> acceptedCookies)? resolved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UndefinedState value) undefined,
    required TResult Function(_AcceptedState value) resolved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UndefinedState value)? undefined,
    TResult? Function(_AcceptedState value)? resolved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UndefinedState value)? undefined,
    TResult Function(_AcceptedState value)? resolved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookieStateCopyWith<$Res> {
  factory $CookieStateCopyWith(
          CookieState value, $Res Function(CookieState) then) =
      _$CookieStateCopyWithImpl<$Res, CookieState>;
}

/// @nodoc
class _$CookieStateCopyWithImpl<$Res, $Val extends CookieState>
    implements $CookieStateCopyWith<$Res> {
  _$CookieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UndefinedStateCopyWith<$Res> {
  factory _$$_UndefinedStateCopyWith(
          _$_UndefinedState value, $Res Function(_$_UndefinedState) then) =
      __$$_UndefinedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showDialog});
}

/// @nodoc
class __$$_UndefinedStateCopyWithImpl<$Res>
    extends _$CookieStateCopyWithImpl<$Res, _$_UndefinedState>
    implements _$$_UndefinedStateCopyWith<$Res> {
  __$$_UndefinedStateCopyWithImpl(
      _$_UndefinedState _value, $Res Function(_$_UndefinedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showDialog = null,
  }) {
    return _then(_$_UndefinedState(
      showDialog: null == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UndefinedState extends _UndefinedState {
  const _$_UndefinedState({required this.showDialog}) : super._();

  @override
  final bool showDialog;

  @override
  String toString() {
    return 'CookieState.undefined(showDialog: $showDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UndefinedState &&
            (identical(other.showDialog, showDialog) ||
                other.showDialog == showDialog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UndefinedStateCopyWith<_$_UndefinedState> get copyWith =>
      __$$_UndefinedStateCopyWithImpl<_$_UndefinedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showDialog) undefined,
    required TResult Function(List<Cookies> acceptedCookies) resolved,
  }) {
    return undefined(showDialog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showDialog)? undefined,
    TResult? Function(List<Cookies> acceptedCookies)? resolved,
  }) {
    return undefined?.call(showDialog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showDialog)? undefined,
    TResult Function(List<Cookies> acceptedCookies)? resolved,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(showDialog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UndefinedState value) undefined,
    required TResult Function(_AcceptedState value) resolved,
  }) {
    return undefined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UndefinedState value)? undefined,
    TResult? Function(_AcceptedState value)? resolved,
  }) {
    return undefined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UndefinedState value)? undefined,
    TResult Function(_AcceptedState value)? resolved,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(this);
    }
    return orElse();
  }
}

abstract class _UndefinedState extends CookieState {
  const factory _UndefinedState({required final bool showDialog}) =
      _$_UndefinedState;
  const _UndefinedState._() : super._();

  bool get showDialog;
  @JsonKey(ignore: true)
  _$$_UndefinedStateCopyWith<_$_UndefinedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptedStateCopyWith<$Res> {
  factory _$$_AcceptedStateCopyWith(
          _$_AcceptedState value, $Res Function(_$_AcceptedState) then) =
      __$$_AcceptedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Cookies> acceptedCookies});
}

/// @nodoc
class __$$_AcceptedStateCopyWithImpl<$Res>
    extends _$CookieStateCopyWithImpl<$Res, _$_AcceptedState>
    implements _$$_AcceptedStateCopyWith<$Res> {
  __$$_AcceptedStateCopyWithImpl(
      _$_AcceptedState _value, $Res Function(_$_AcceptedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptedCookies = null,
  }) {
    return _then(_$_AcceptedState(
      acceptedCookies: null == acceptedCookies
          ? _value._acceptedCookies
          : acceptedCookies // ignore: cast_nullable_to_non_nullable
              as List<Cookies>,
    ));
  }
}

/// @nodoc

class _$_AcceptedState extends _AcceptedState {
  const _$_AcceptedState({required final List<Cookies> acceptedCookies})
      : _acceptedCookies = acceptedCookies,
        super._();

  final List<Cookies> _acceptedCookies;
  @override
  List<Cookies> get acceptedCookies {
    if (_acceptedCookies is EqualUnmodifiableListView) return _acceptedCookies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_acceptedCookies);
  }

  @override
  String toString() {
    return 'CookieState.resolved(acceptedCookies: $acceptedCookies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptedState &&
            const DeepCollectionEquality()
                .equals(other._acceptedCookies, _acceptedCookies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_acceptedCookies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptedStateCopyWith<_$_AcceptedState> get copyWith =>
      __$$_AcceptedStateCopyWithImpl<_$_AcceptedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showDialog) undefined,
    required TResult Function(List<Cookies> acceptedCookies) resolved,
  }) {
    return resolved(acceptedCookies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showDialog)? undefined,
    TResult? Function(List<Cookies> acceptedCookies)? resolved,
  }) {
    return resolved?.call(acceptedCookies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showDialog)? undefined,
    TResult Function(List<Cookies> acceptedCookies)? resolved,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(acceptedCookies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UndefinedState value) undefined,
    required TResult Function(_AcceptedState value) resolved,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UndefinedState value)? undefined,
    TResult? Function(_AcceptedState value)? resolved,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UndefinedState value)? undefined,
    TResult Function(_AcceptedState value)? resolved,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class _AcceptedState extends CookieState {
  const factory _AcceptedState({required final List<Cookies> acceptedCookies}) =
      _$_AcceptedState;
  const _AcceptedState._() : super._();

  List<Cookies> get acceptedCookies;
  @JsonKey(ignore: true)
  _$$_AcceptedStateCopyWith<_$_AcceptedState> get copyWith =>
      throw _privateConstructorUsedError;
}
