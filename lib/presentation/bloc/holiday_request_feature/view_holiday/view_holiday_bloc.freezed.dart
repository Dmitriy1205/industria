// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_holiday_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewHolidayEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchHolidayById,
    required TResult Function(String id, String status) changeStatus,
    required TResult Function(String id) markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchHolidayById,
    TResult? Function(String id, String status)? changeStatus,
    TResult? Function(String id)? markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchHolidayById,
    TResult Function(String id, String status)? changeStatus,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchHolidayByIdEvent value) fetchHolidayById,
    required TResult Function(_ChangeStatusEvent value) changeStatus,
    required TResult Function(_MarkAsReadEvent value) markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchHolidayByIdEvent value)? fetchHolidayById,
    TResult? Function(_ChangeStatusEvent value)? changeStatus,
    TResult? Function(_MarkAsReadEvent value)? markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchHolidayByIdEvent value)? fetchHolidayById,
    TResult Function(_ChangeStatusEvent value)? changeStatus,
    TResult Function(_MarkAsReadEvent value)? markAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewHolidayEventCopyWith<ViewHolidayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewHolidayEventCopyWith<$Res> {
  factory $ViewHolidayEventCopyWith(
          ViewHolidayEvent value, $Res Function(ViewHolidayEvent) then) =
      _$ViewHolidayEventCopyWithImpl<$Res, ViewHolidayEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ViewHolidayEventCopyWithImpl<$Res, $Val extends ViewHolidayEvent>
    implements $ViewHolidayEventCopyWith<$Res> {
  _$ViewHolidayEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchHolidayByIdEventCopyWith<$Res>
    implements $ViewHolidayEventCopyWith<$Res> {
  factory _$$_FetchHolidayByIdEventCopyWith(_$_FetchHolidayByIdEvent value,
          $Res Function(_$_FetchHolidayByIdEvent) then) =
      __$$_FetchHolidayByIdEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_FetchHolidayByIdEventCopyWithImpl<$Res>
    extends _$ViewHolidayEventCopyWithImpl<$Res, _$_FetchHolidayByIdEvent>
    implements _$$_FetchHolidayByIdEventCopyWith<$Res> {
  __$$_FetchHolidayByIdEventCopyWithImpl(_$_FetchHolidayByIdEvent _value,
      $Res Function(_$_FetchHolidayByIdEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_FetchHolidayByIdEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchHolidayByIdEvent implements _FetchHolidayByIdEvent {
  const _$_FetchHolidayByIdEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ViewHolidayEvent.fetchHolidayById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchHolidayByIdEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchHolidayByIdEventCopyWith<_$_FetchHolidayByIdEvent> get copyWith =>
      __$$_FetchHolidayByIdEventCopyWithImpl<_$_FetchHolidayByIdEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchHolidayById,
    required TResult Function(String id, String status) changeStatus,
    required TResult Function(String id) markAsRead,
  }) {
    return fetchHolidayById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchHolidayById,
    TResult? Function(String id, String status)? changeStatus,
    TResult? Function(String id)? markAsRead,
  }) {
    return fetchHolidayById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchHolidayById,
    TResult Function(String id, String status)? changeStatus,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) {
    if (fetchHolidayById != null) {
      return fetchHolidayById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchHolidayByIdEvent value) fetchHolidayById,
    required TResult Function(_ChangeStatusEvent value) changeStatus,
    required TResult Function(_MarkAsReadEvent value) markAsRead,
  }) {
    return fetchHolidayById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchHolidayByIdEvent value)? fetchHolidayById,
    TResult? Function(_ChangeStatusEvent value)? changeStatus,
    TResult? Function(_MarkAsReadEvent value)? markAsRead,
  }) {
    return fetchHolidayById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchHolidayByIdEvent value)? fetchHolidayById,
    TResult Function(_ChangeStatusEvent value)? changeStatus,
    TResult Function(_MarkAsReadEvent value)? markAsRead,
    required TResult orElse(),
  }) {
    if (fetchHolidayById != null) {
      return fetchHolidayById(this);
    }
    return orElse();
  }
}

abstract class _FetchHolidayByIdEvent implements ViewHolidayEvent {
  const factory _FetchHolidayByIdEvent({required final String id}) =
      _$_FetchHolidayByIdEvent;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_FetchHolidayByIdEventCopyWith<_$_FetchHolidayByIdEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeStatusEventCopyWith<$Res>
    implements $ViewHolidayEventCopyWith<$Res> {
  factory _$$_ChangeStatusEventCopyWith(_$_ChangeStatusEvent value,
          $Res Function(_$_ChangeStatusEvent) then) =
      __$$_ChangeStatusEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String status});
}

/// @nodoc
class __$$_ChangeStatusEventCopyWithImpl<$Res>
    extends _$ViewHolidayEventCopyWithImpl<$Res, _$_ChangeStatusEvent>
    implements _$$_ChangeStatusEventCopyWith<$Res> {
  __$$_ChangeStatusEventCopyWithImpl(
      _$_ChangeStatusEvent _value, $Res Function(_$_ChangeStatusEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_$_ChangeStatusEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeStatusEvent implements _ChangeStatusEvent {
  const _$_ChangeStatusEvent({required this.id, required this.status});

  @override
  final String id;
  @override
  final String status;

  @override
  String toString() {
    return 'ViewHolidayEvent.changeStatus(id: $id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeStatusEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeStatusEventCopyWith<_$_ChangeStatusEvent> get copyWith =>
      __$$_ChangeStatusEventCopyWithImpl<_$_ChangeStatusEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchHolidayById,
    required TResult Function(String id, String status) changeStatus,
    required TResult Function(String id) markAsRead,
  }) {
    return changeStatus(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchHolidayById,
    TResult? Function(String id, String status)? changeStatus,
    TResult? Function(String id)? markAsRead,
  }) {
    return changeStatus?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchHolidayById,
    TResult Function(String id, String status)? changeStatus,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(id, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchHolidayByIdEvent value) fetchHolidayById,
    required TResult Function(_ChangeStatusEvent value) changeStatus,
    required TResult Function(_MarkAsReadEvent value) markAsRead,
  }) {
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchHolidayByIdEvent value)? fetchHolidayById,
    TResult? Function(_ChangeStatusEvent value)? changeStatus,
    TResult? Function(_MarkAsReadEvent value)? markAsRead,
  }) {
    return changeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchHolidayByIdEvent value)? fetchHolidayById,
    TResult Function(_ChangeStatusEvent value)? changeStatus,
    TResult Function(_MarkAsReadEvent value)? markAsRead,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeStatusEvent implements ViewHolidayEvent {
  const factory _ChangeStatusEvent(
      {required final String id,
      required final String status}) = _$_ChangeStatusEvent;

  @override
  String get id;
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeStatusEventCopyWith<_$_ChangeStatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MarkAsReadEventCopyWith<$Res>
    implements $ViewHolidayEventCopyWith<$Res> {
  factory _$$_MarkAsReadEventCopyWith(
          _$_MarkAsReadEvent value, $Res Function(_$_MarkAsReadEvent) then) =
      __$$_MarkAsReadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_MarkAsReadEventCopyWithImpl<$Res>
    extends _$ViewHolidayEventCopyWithImpl<$Res, _$_MarkAsReadEvent>
    implements _$$_MarkAsReadEventCopyWith<$Res> {
  __$$_MarkAsReadEventCopyWithImpl(
      _$_MarkAsReadEvent _value, $Res Function(_$_MarkAsReadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_MarkAsReadEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MarkAsReadEvent implements _MarkAsReadEvent {
  const _$_MarkAsReadEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ViewHolidayEvent.markAsRead(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarkAsReadEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarkAsReadEventCopyWith<_$_MarkAsReadEvent> get copyWith =>
      __$$_MarkAsReadEventCopyWithImpl<_$_MarkAsReadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchHolidayById,
    required TResult Function(String id, String status) changeStatus,
    required TResult Function(String id) markAsRead,
  }) {
    return markAsRead(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchHolidayById,
    TResult? Function(String id, String status)? changeStatus,
    TResult? Function(String id)? markAsRead,
  }) {
    return markAsRead?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchHolidayById,
    TResult Function(String id, String status)? changeStatus,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchHolidayByIdEvent value) fetchHolidayById,
    required TResult Function(_ChangeStatusEvent value) changeStatus,
    required TResult Function(_MarkAsReadEvent value) markAsRead,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchHolidayByIdEvent value)? fetchHolidayById,
    TResult? Function(_ChangeStatusEvent value)? changeStatus,
    TResult? Function(_MarkAsReadEvent value)? markAsRead,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchHolidayByIdEvent value)? fetchHolidayById,
    TResult Function(_ChangeStatusEvent value)? changeStatus,
    TResult Function(_MarkAsReadEvent value)? markAsRead,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAsReadEvent implements ViewHolidayEvent {
  const factory _MarkAsReadEvent({required final String id}) =
      _$_MarkAsReadEvent;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_MarkAsReadEventCopyWith<_$_MarkAsReadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ViewHolidayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HolidayRequest holiday) loaded,
    required TResult Function(HolidayRequest holiday) changedStatus,
    required TResult Function(HolidayRequest holiday) markedAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HolidayRequest holiday)? loaded,
    TResult? Function(HolidayRequest holiday)? changedStatus,
    TResult? Function(HolidayRequest holiday)? markedAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HolidayRequest holiday)? loaded,
    TResult Function(HolidayRequest holiday)? changedStatus,
    TResult Function(HolidayRequest holiday)? markedAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ChangedStatusState value) changedStatus,
    required TResult Function(_MarkedAsReadState value) markedAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ChangedStatusState value)? changedStatus,
    TResult? Function(_MarkedAsReadState value)? markedAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ChangedStatusState value)? changedStatus,
    TResult Function(_MarkedAsReadState value)? markedAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewHolidayStateCopyWith<$Res> {
  factory $ViewHolidayStateCopyWith(
          ViewHolidayState value, $Res Function(ViewHolidayState) then) =
      _$ViewHolidayStateCopyWithImpl<$Res, ViewHolidayState>;
}

/// @nodoc
class _$ViewHolidayStateCopyWithImpl<$Res, $Val extends ViewHolidayState>
    implements $ViewHolidayStateCopyWith<$Res> {
  _$ViewHolidayStateCopyWithImpl(this._value, this._then);

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
    extends _$ViewHolidayStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'ViewHolidayState.initial()';
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
    required TResult Function(HolidayRequest holiday) loaded,
    required TResult Function(HolidayRequest holiday) changedStatus,
    required TResult Function(HolidayRequest holiday) markedAsRead,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HolidayRequest holiday)? loaded,
    TResult? Function(HolidayRequest holiday)? changedStatus,
    TResult? Function(HolidayRequest holiday)? markedAsRead,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HolidayRequest holiday)? loaded,
    TResult Function(HolidayRequest holiday)? changedStatus,
    TResult Function(HolidayRequest holiday)? markedAsRead,
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
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ChangedStatusState value) changedStatus,
    required TResult Function(_MarkedAsReadState value) markedAsRead,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ChangedStatusState value)? changedStatus,
    TResult? Function(_MarkedAsReadState value)? markedAsRead,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ChangedStatusState value)? changedStatus,
    TResult Function(_MarkedAsReadState value)? markedAsRead,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends ViewHolidayState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({HolidayRequest holiday});

  $HolidayRequestCopyWith<$Res> get holiday;
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$ViewHolidayStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holiday = null,
  }) {
    return _then(_$_LoadedState(
      holiday: null == holiday
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as HolidayRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HolidayRequestCopyWith<$Res> get holiday {
    return $HolidayRequestCopyWith<$Res>(_value.holiday, (value) {
      return _then(_value.copyWith(holiday: value));
    });
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState({required this.holiday}) : super._();

  @override
  final HolidayRequest holiday;

  @override
  String toString() {
    return 'ViewHolidayState.loaded(holiday: $holiday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            (identical(other.holiday, holiday) || other.holiday == holiday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, holiday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HolidayRequest holiday) loaded,
    required TResult Function(HolidayRequest holiday) changedStatus,
    required TResult Function(HolidayRequest holiday) markedAsRead,
  }) {
    return loaded(holiday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HolidayRequest holiday)? loaded,
    TResult? Function(HolidayRequest holiday)? changedStatus,
    TResult? Function(HolidayRequest holiday)? markedAsRead,
  }) {
    return loaded?.call(holiday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HolidayRequest holiday)? loaded,
    TResult Function(HolidayRequest holiday)? changedStatus,
    TResult Function(HolidayRequest holiday)? markedAsRead,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(holiday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ChangedStatusState value) changedStatus,
    required TResult Function(_MarkedAsReadState value) markedAsRead,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ChangedStatusState value)? changedStatus,
    TResult? Function(_MarkedAsReadState value)? markedAsRead,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ChangedStatusState value)? changedStatus,
    TResult Function(_MarkedAsReadState value)? markedAsRead,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends ViewHolidayState {
  const factory _LoadedState({required final HolidayRequest holiday}) =
      _$_LoadedState;
  const _LoadedState._() : super._();

  HolidayRequest get holiday;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangedStatusStateCopyWith<$Res> {
  factory _$$_ChangedStatusStateCopyWith(_$_ChangedStatusState value,
          $Res Function(_$_ChangedStatusState) then) =
      __$$_ChangedStatusStateCopyWithImpl<$Res>;
  @useResult
  $Res call({HolidayRequest holiday});

  $HolidayRequestCopyWith<$Res> get holiday;
}

/// @nodoc
class __$$_ChangedStatusStateCopyWithImpl<$Res>
    extends _$ViewHolidayStateCopyWithImpl<$Res, _$_ChangedStatusState>
    implements _$$_ChangedStatusStateCopyWith<$Res> {
  __$$_ChangedStatusStateCopyWithImpl(
      _$_ChangedStatusState _value, $Res Function(_$_ChangedStatusState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holiday = null,
  }) {
    return _then(_$_ChangedStatusState(
      holiday: null == holiday
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as HolidayRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HolidayRequestCopyWith<$Res> get holiday {
    return $HolidayRequestCopyWith<$Res>(_value.holiday, (value) {
      return _then(_value.copyWith(holiday: value));
    });
  }
}

/// @nodoc

class _$_ChangedStatusState extends _ChangedStatusState {
  const _$_ChangedStatusState({required this.holiday}) : super._();

  @override
  final HolidayRequest holiday;

  @override
  String toString() {
    return 'ViewHolidayState.changedStatus(holiday: $holiday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangedStatusState &&
            (identical(other.holiday, holiday) || other.holiday == holiday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, holiday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangedStatusStateCopyWith<_$_ChangedStatusState> get copyWith =>
      __$$_ChangedStatusStateCopyWithImpl<_$_ChangedStatusState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HolidayRequest holiday) loaded,
    required TResult Function(HolidayRequest holiday) changedStatus,
    required TResult Function(HolidayRequest holiday) markedAsRead,
  }) {
    return changedStatus(holiday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HolidayRequest holiday)? loaded,
    TResult? Function(HolidayRequest holiday)? changedStatus,
    TResult? Function(HolidayRequest holiday)? markedAsRead,
  }) {
    return changedStatus?.call(holiday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HolidayRequest holiday)? loaded,
    TResult Function(HolidayRequest holiday)? changedStatus,
    TResult Function(HolidayRequest holiday)? markedAsRead,
    required TResult orElse(),
  }) {
    if (changedStatus != null) {
      return changedStatus(holiday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ChangedStatusState value) changedStatus,
    required TResult Function(_MarkedAsReadState value) markedAsRead,
  }) {
    return changedStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ChangedStatusState value)? changedStatus,
    TResult? Function(_MarkedAsReadState value)? markedAsRead,
  }) {
    return changedStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ChangedStatusState value)? changedStatus,
    TResult Function(_MarkedAsReadState value)? markedAsRead,
    required TResult orElse(),
  }) {
    if (changedStatus != null) {
      return changedStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangedStatusState extends ViewHolidayState {
  const factory _ChangedStatusState({required final HolidayRequest holiday}) =
      _$_ChangedStatusState;
  const _ChangedStatusState._() : super._();

  HolidayRequest get holiday;
  @JsonKey(ignore: true)
  _$$_ChangedStatusStateCopyWith<_$_ChangedStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MarkedAsReadStateCopyWith<$Res> {
  factory _$$_MarkedAsReadStateCopyWith(_$_MarkedAsReadState value,
          $Res Function(_$_MarkedAsReadState) then) =
      __$$_MarkedAsReadStateCopyWithImpl<$Res>;
  @useResult
  $Res call({HolidayRequest holiday});

  $HolidayRequestCopyWith<$Res> get holiday;
}

/// @nodoc
class __$$_MarkedAsReadStateCopyWithImpl<$Res>
    extends _$ViewHolidayStateCopyWithImpl<$Res, _$_MarkedAsReadState>
    implements _$$_MarkedAsReadStateCopyWith<$Res> {
  __$$_MarkedAsReadStateCopyWithImpl(
      _$_MarkedAsReadState _value, $Res Function(_$_MarkedAsReadState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holiday = null,
  }) {
    return _then(_$_MarkedAsReadState(
      holiday: null == holiday
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as HolidayRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HolidayRequestCopyWith<$Res> get holiday {
    return $HolidayRequestCopyWith<$Res>(_value.holiday, (value) {
      return _then(_value.copyWith(holiday: value));
    });
  }
}

/// @nodoc

class _$_MarkedAsReadState extends _MarkedAsReadState {
  const _$_MarkedAsReadState({required this.holiday}) : super._();

  @override
  final HolidayRequest holiday;

  @override
  String toString() {
    return 'ViewHolidayState.markedAsRead(holiday: $holiday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarkedAsReadState &&
            (identical(other.holiday, holiday) || other.holiday == holiday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, holiday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarkedAsReadStateCopyWith<_$_MarkedAsReadState> get copyWith =>
      __$$_MarkedAsReadStateCopyWithImpl<_$_MarkedAsReadState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HolidayRequest holiday) loaded,
    required TResult Function(HolidayRequest holiday) changedStatus,
    required TResult Function(HolidayRequest holiday) markedAsRead,
  }) {
    return markedAsRead(holiday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HolidayRequest holiday)? loaded,
    TResult? Function(HolidayRequest holiday)? changedStatus,
    TResult? Function(HolidayRequest holiday)? markedAsRead,
  }) {
    return markedAsRead?.call(holiday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HolidayRequest holiday)? loaded,
    TResult Function(HolidayRequest holiday)? changedStatus,
    TResult Function(HolidayRequest holiday)? markedAsRead,
    required TResult orElse(),
  }) {
    if (markedAsRead != null) {
      return markedAsRead(holiday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ChangedStatusState value) changedStatus,
    required TResult Function(_MarkedAsReadState value) markedAsRead,
  }) {
    return markedAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ChangedStatusState value)? changedStatus,
    TResult? Function(_MarkedAsReadState value)? markedAsRead,
  }) {
    return markedAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ChangedStatusState value)? changedStatus,
    TResult Function(_MarkedAsReadState value)? markedAsRead,
    required TResult orElse(),
  }) {
    if (markedAsRead != null) {
      return markedAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkedAsReadState extends ViewHolidayState {
  const factory _MarkedAsReadState({required final HolidayRequest holiday}) =
      _$_MarkedAsReadState;
  const _MarkedAsReadState._() : super._();

  HolidayRequest get holiday;
  @JsonKey(ignore: true)
  _$$_MarkedAsReadStateCopyWith<_$_MarkedAsReadState> get copyWith =>
      throw _privateConstructorUsedError;
}
