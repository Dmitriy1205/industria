// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_job_application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewJobApplicationEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchJobApplicationById,
    required TResult Function(String id, String status) changeStatus,
    required TResult Function(String id) markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchJobApplicationById,
    TResult? Function(String id, String status)? changeStatus,
    TResult? Function(String id)? markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchJobApplicationById,
    TResult Function(String id, String status)? changeStatus,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobApplicationByIdEvent value)
        fetchJobApplicationById,
    required TResult Function(_ChangeStatusEvent value) changeStatus,
    required TResult Function(_MarkAsReadEvent value) markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobApplicationByIdEvent value)?
        fetchJobApplicationById,
    TResult? Function(_ChangeStatusEvent value)? changeStatus,
    TResult? Function(_MarkAsReadEvent value)? markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobApplicationByIdEvent value)?
        fetchJobApplicationById,
    TResult Function(_ChangeStatusEvent value)? changeStatus,
    TResult Function(_MarkAsReadEvent value)? markAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewJobApplicationEventCopyWith<ViewJobApplicationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewJobApplicationEventCopyWith<$Res> {
  factory $ViewJobApplicationEventCopyWith(ViewJobApplicationEvent value,
          $Res Function(ViewJobApplicationEvent) then) =
      _$ViewJobApplicationEventCopyWithImpl<$Res, ViewJobApplicationEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ViewJobApplicationEventCopyWithImpl<$Res,
        $Val extends ViewJobApplicationEvent>
    implements $ViewJobApplicationEventCopyWith<$Res> {
  _$ViewJobApplicationEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_FetchJobApplicationByIdEventCopyWith<$Res>
    implements $ViewJobApplicationEventCopyWith<$Res> {
  factory _$$_FetchJobApplicationByIdEventCopyWith(
          _$_FetchJobApplicationByIdEvent value,
          $Res Function(_$_FetchJobApplicationByIdEvent) then) =
      __$$_FetchJobApplicationByIdEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_FetchJobApplicationByIdEventCopyWithImpl<$Res>
    extends _$ViewJobApplicationEventCopyWithImpl<$Res,
        _$_FetchJobApplicationByIdEvent>
    implements _$$_FetchJobApplicationByIdEventCopyWith<$Res> {
  __$$_FetchJobApplicationByIdEventCopyWithImpl(
      _$_FetchJobApplicationByIdEvent _value,
      $Res Function(_$_FetchJobApplicationByIdEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_FetchJobApplicationByIdEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchJobApplicationByIdEvent implements _FetchJobApplicationByIdEvent {
  const _$_FetchJobApplicationByIdEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ViewJobApplicationEvent.fetchJobApplicationById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchJobApplicationByIdEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchJobApplicationByIdEventCopyWith<_$_FetchJobApplicationByIdEvent>
      get copyWith => __$$_FetchJobApplicationByIdEventCopyWithImpl<
          _$_FetchJobApplicationByIdEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchJobApplicationById,
    required TResult Function(String id, String status) changeStatus,
    required TResult Function(String id) markAsRead,
  }) {
    return fetchJobApplicationById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchJobApplicationById,
    TResult? Function(String id, String status)? changeStatus,
    TResult? Function(String id)? markAsRead,
  }) {
    return fetchJobApplicationById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchJobApplicationById,
    TResult Function(String id, String status)? changeStatus,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) {
    if (fetchJobApplicationById != null) {
      return fetchJobApplicationById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobApplicationByIdEvent value)
        fetchJobApplicationById,
    required TResult Function(_ChangeStatusEvent value) changeStatus,
    required TResult Function(_MarkAsReadEvent value) markAsRead,
  }) {
    return fetchJobApplicationById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobApplicationByIdEvent value)?
        fetchJobApplicationById,
    TResult? Function(_ChangeStatusEvent value)? changeStatus,
    TResult? Function(_MarkAsReadEvent value)? markAsRead,
  }) {
    return fetchJobApplicationById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobApplicationByIdEvent value)?
        fetchJobApplicationById,
    TResult Function(_ChangeStatusEvent value)? changeStatus,
    TResult Function(_MarkAsReadEvent value)? markAsRead,
    required TResult orElse(),
  }) {
    if (fetchJobApplicationById != null) {
      return fetchJobApplicationById(this);
    }
    return orElse();
  }
}

abstract class _FetchJobApplicationByIdEvent
    implements ViewJobApplicationEvent {
  const factory _FetchJobApplicationByIdEvent({required final String id}) =
      _$_FetchJobApplicationByIdEvent;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_FetchJobApplicationByIdEventCopyWith<_$_FetchJobApplicationByIdEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeStatusEventCopyWith<$Res>
    implements $ViewJobApplicationEventCopyWith<$Res> {
  factory _$$_ChangeStatusEventCopyWith(_$_ChangeStatusEvent value,
          $Res Function(_$_ChangeStatusEvent) then) =
      __$$_ChangeStatusEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String status});
}

/// @nodoc
class __$$_ChangeStatusEventCopyWithImpl<$Res>
    extends _$ViewJobApplicationEventCopyWithImpl<$Res, _$_ChangeStatusEvent>
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
    return 'ViewJobApplicationEvent.changeStatus(id: $id, status: $status)';
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
    required TResult Function(String id) fetchJobApplicationById,
    required TResult Function(String id, String status) changeStatus,
    required TResult Function(String id) markAsRead,
  }) {
    return changeStatus(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchJobApplicationById,
    TResult? Function(String id, String status)? changeStatus,
    TResult? Function(String id)? markAsRead,
  }) {
    return changeStatus?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchJobApplicationById,
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
    required TResult Function(_FetchJobApplicationByIdEvent value)
        fetchJobApplicationById,
    required TResult Function(_ChangeStatusEvent value) changeStatus,
    required TResult Function(_MarkAsReadEvent value) markAsRead,
  }) {
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobApplicationByIdEvent value)?
        fetchJobApplicationById,
    TResult? Function(_ChangeStatusEvent value)? changeStatus,
    TResult? Function(_MarkAsReadEvent value)? markAsRead,
  }) {
    return changeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobApplicationByIdEvent value)?
        fetchJobApplicationById,
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

abstract class _ChangeStatusEvent implements ViewJobApplicationEvent {
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
    implements $ViewJobApplicationEventCopyWith<$Res> {
  factory _$$_MarkAsReadEventCopyWith(
          _$_MarkAsReadEvent value, $Res Function(_$_MarkAsReadEvent) then) =
      __$$_MarkAsReadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_MarkAsReadEventCopyWithImpl<$Res>
    extends _$ViewJobApplicationEventCopyWithImpl<$Res, _$_MarkAsReadEvent>
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
    return 'ViewJobApplicationEvent.markAsRead(id: $id)';
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
    required TResult Function(String id) fetchJobApplicationById,
    required TResult Function(String id, String status) changeStatus,
    required TResult Function(String id) markAsRead,
  }) {
    return markAsRead(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchJobApplicationById,
    TResult? Function(String id, String status)? changeStatus,
    TResult? Function(String id)? markAsRead,
  }) {
    return markAsRead?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchJobApplicationById,
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
    required TResult Function(_FetchJobApplicationByIdEvent value)
        fetchJobApplicationById,
    required TResult Function(_ChangeStatusEvent value) changeStatus,
    required TResult Function(_MarkAsReadEvent value) markAsRead,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobApplicationByIdEvent value)?
        fetchJobApplicationById,
    TResult? Function(_ChangeStatusEvent value)? changeStatus,
    TResult? Function(_MarkAsReadEvent value)? markAsRead,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobApplicationByIdEvent value)?
        fetchJobApplicationById,
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

abstract class _MarkAsReadEvent implements ViewJobApplicationEvent {
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
mixin _$ViewJobApplicationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(JobApplication jobApplication) loaded,
    required TResult Function(JobApplication jobApplication) changedStatus,
    required TResult Function(JobApplication jobApplication) markedAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(JobApplication jobApplication)? loaded,
    TResult? Function(JobApplication jobApplication)? changedStatus,
    TResult? Function(JobApplication jobApplication)? markedAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(JobApplication jobApplication)? loaded,
    TResult Function(JobApplication jobApplication)? changedStatus,
    TResult Function(JobApplication jobApplication)? markedAsRead,
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
abstract class $ViewJobApplicationStateCopyWith<$Res> {
  factory $ViewJobApplicationStateCopyWith(ViewJobApplicationState value,
          $Res Function(ViewJobApplicationState) then) =
      _$ViewJobApplicationStateCopyWithImpl<$Res, ViewJobApplicationState>;
}

/// @nodoc
class _$ViewJobApplicationStateCopyWithImpl<$Res,
        $Val extends ViewJobApplicationState>
    implements $ViewJobApplicationStateCopyWith<$Res> {
  _$ViewJobApplicationStateCopyWithImpl(this._value, this._then);

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
    extends _$ViewJobApplicationStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'ViewJobApplicationState.initial()';
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
    required TResult Function(JobApplication jobApplication) loaded,
    required TResult Function(JobApplication jobApplication) changedStatus,
    required TResult Function(JobApplication jobApplication) markedAsRead,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(JobApplication jobApplication)? loaded,
    TResult? Function(JobApplication jobApplication)? changedStatus,
    TResult? Function(JobApplication jobApplication)? markedAsRead,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(JobApplication jobApplication)? loaded,
    TResult Function(JobApplication jobApplication)? changedStatus,
    TResult Function(JobApplication jobApplication)? markedAsRead,
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

abstract class _InitialState extends ViewJobApplicationState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({JobApplication jobApplication});

  $JobApplicationCopyWith<$Res> get jobApplication;
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$ViewJobApplicationStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobApplication = null,
  }) {
    return _then(_$_LoadedState(
      jobApplication: null == jobApplication
          ? _value.jobApplication
          : jobApplication // ignore: cast_nullable_to_non_nullable
              as JobApplication,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $JobApplicationCopyWith<$Res> get jobApplication {
    return $JobApplicationCopyWith<$Res>(_value.jobApplication, (value) {
      return _then(_value.copyWith(jobApplication: value));
    });
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState({required this.jobApplication}) : super._();

  @override
  final JobApplication jobApplication;

  @override
  String toString() {
    return 'ViewJobApplicationState.loaded(jobApplication: $jobApplication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            (identical(other.jobApplication, jobApplication) ||
                other.jobApplication == jobApplication));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jobApplication);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(JobApplication jobApplication) loaded,
    required TResult Function(JobApplication jobApplication) changedStatus,
    required TResult Function(JobApplication jobApplication) markedAsRead,
  }) {
    return loaded(jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(JobApplication jobApplication)? loaded,
    TResult? Function(JobApplication jobApplication)? changedStatus,
    TResult? Function(JobApplication jobApplication)? markedAsRead,
  }) {
    return loaded?.call(jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(JobApplication jobApplication)? loaded,
    TResult Function(JobApplication jobApplication)? changedStatus,
    TResult Function(JobApplication jobApplication)? markedAsRead,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(jobApplication);
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

abstract class _LoadedState extends ViewJobApplicationState {
  const factory _LoadedState({required final JobApplication jobApplication}) =
      _$_LoadedState;
  const _LoadedState._() : super._();

  JobApplication get jobApplication;
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
  $Res call({JobApplication jobApplication});

  $JobApplicationCopyWith<$Res> get jobApplication;
}

/// @nodoc
class __$$_ChangedStatusStateCopyWithImpl<$Res>
    extends _$ViewJobApplicationStateCopyWithImpl<$Res, _$_ChangedStatusState>
    implements _$$_ChangedStatusStateCopyWith<$Res> {
  __$$_ChangedStatusStateCopyWithImpl(
      _$_ChangedStatusState _value, $Res Function(_$_ChangedStatusState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobApplication = null,
  }) {
    return _then(_$_ChangedStatusState(
      jobApplication: null == jobApplication
          ? _value.jobApplication
          : jobApplication // ignore: cast_nullable_to_non_nullable
              as JobApplication,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $JobApplicationCopyWith<$Res> get jobApplication {
    return $JobApplicationCopyWith<$Res>(_value.jobApplication, (value) {
      return _then(_value.copyWith(jobApplication: value));
    });
  }
}

/// @nodoc

class _$_ChangedStatusState extends _ChangedStatusState {
  const _$_ChangedStatusState({required this.jobApplication}) : super._();

  @override
  final JobApplication jobApplication;

  @override
  String toString() {
    return 'ViewJobApplicationState.changedStatus(jobApplication: $jobApplication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangedStatusState &&
            (identical(other.jobApplication, jobApplication) ||
                other.jobApplication == jobApplication));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jobApplication);

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
    required TResult Function(JobApplication jobApplication) loaded,
    required TResult Function(JobApplication jobApplication) changedStatus,
    required TResult Function(JobApplication jobApplication) markedAsRead,
  }) {
    return changedStatus(jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(JobApplication jobApplication)? loaded,
    TResult? Function(JobApplication jobApplication)? changedStatus,
    TResult? Function(JobApplication jobApplication)? markedAsRead,
  }) {
    return changedStatus?.call(jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(JobApplication jobApplication)? loaded,
    TResult Function(JobApplication jobApplication)? changedStatus,
    TResult Function(JobApplication jobApplication)? markedAsRead,
    required TResult orElse(),
  }) {
    if (changedStatus != null) {
      return changedStatus(jobApplication);
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

abstract class _ChangedStatusState extends ViewJobApplicationState {
  const factory _ChangedStatusState(
      {required final JobApplication jobApplication}) = _$_ChangedStatusState;
  const _ChangedStatusState._() : super._();

  JobApplication get jobApplication;
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
  $Res call({JobApplication jobApplication});

  $JobApplicationCopyWith<$Res> get jobApplication;
}

/// @nodoc
class __$$_MarkedAsReadStateCopyWithImpl<$Res>
    extends _$ViewJobApplicationStateCopyWithImpl<$Res, _$_MarkedAsReadState>
    implements _$$_MarkedAsReadStateCopyWith<$Res> {
  __$$_MarkedAsReadStateCopyWithImpl(
      _$_MarkedAsReadState _value, $Res Function(_$_MarkedAsReadState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobApplication = null,
  }) {
    return _then(_$_MarkedAsReadState(
      jobApplication: null == jobApplication
          ? _value.jobApplication
          : jobApplication // ignore: cast_nullable_to_non_nullable
              as JobApplication,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $JobApplicationCopyWith<$Res> get jobApplication {
    return $JobApplicationCopyWith<$Res>(_value.jobApplication, (value) {
      return _then(_value.copyWith(jobApplication: value));
    });
  }
}

/// @nodoc

class _$_MarkedAsReadState extends _MarkedAsReadState {
  const _$_MarkedAsReadState({required this.jobApplication}) : super._();

  @override
  final JobApplication jobApplication;

  @override
  String toString() {
    return 'ViewJobApplicationState.markedAsRead(jobApplication: $jobApplication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarkedAsReadState &&
            (identical(other.jobApplication, jobApplication) ||
                other.jobApplication == jobApplication));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jobApplication);

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
    required TResult Function(JobApplication jobApplication) loaded,
    required TResult Function(JobApplication jobApplication) changedStatus,
    required TResult Function(JobApplication jobApplication) markedAsRead,
  }) {
    return markedAsRead(jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(JobApplication jobApplication)? loaded,
    TResult? Function(JobApplication jobApplication)? changedStatus,
    TResult? Function(JobApplication jobApplication)? markedAsRead,
  }) {
    return markedAsRead?.call(jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(JobApplication jobApplication)? loaded,
    TResult Function(JobApplication jobApplication)? changedStatus,
    TResult Function(JobApplication jobApplication)? markedAsRead,
    required TResult orElse(),
  }) {
    if (markedAsRead != null) {
      return markedAsRead(jobApplication);
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

abstract class _MarkedAsReadState extends ViewJobApplicationState {
  const factory _MarkedAsReadState(
      {required final JobApplication jobApplication}) = _$_MarkedAsReadState;
  const _MarkedAsReadState._() : super._();

  JobApplication get jobApplication;
  @JsonKey(ignore: true)
  _$$_MarkedAsReadStateCopyWith<_$_MarkedAsReadState> get copyWith =>
      throw _privateConstructorUsedError;
}
