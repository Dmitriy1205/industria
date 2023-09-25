// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobFilters filter) fetchJobs,
    required TResult Function(String query) changeSearchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JobFilters filter)? fetchJobs,
    TResult? Function(String query)? changeSearchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobFilters filter)? fetchJobs,
    TResult Function(String query)? changeSearchQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobsEvent value) fetchJobs,
    required TResult Function(_ChangeSearchQueryEvent value) changeSearchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobsEvent value)? fetchJobs,
    TResult? Function(_ChangeSearchQueryEvent value)? changeSearchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobsEvent value)? fetchJobs,
    TResult Function(_ChangeSearchQueryEvent value)? changeSearchQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsEventCopyWith<$Res> {
  factory $JobsEventCopyWith(JobsEvent value, $Res Function(JobsEvent) then) =
      _$JobsEventCopyWithImpl<$Res, JobsEvent>;
}

/// @nodoc
class _$JobsEventCopyWithImpl<$Res, $Val extends JobsEvent>
    implements $JobsEventCopyWith<$Res> {
  _$JobsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchJobsEventCopyWith<$Res> {
  factory _$$_FetchJobsEventCopyWith(
          _$_FetchJobsEvent value, $Res Function(_$_FetchJobsEvent) then) =
      __$$_FetchJobsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({JobFilters filter});
}

/// @nodoc
class __$$_FetchJobsEventCopyWithImpl<$Res>
    extends _$JobsEventCopyWithImpl<$Res, _$_FetchJobsEvent>
    implements _$$_FetchJobsEventCopyWith<$Res> {
  __$$_FetchJobsEventCopyWithImpl(
      _$_FetchJobsEvent _value, $Res Function(_$_FetchJobsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_FetchJobsEvent(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as JobFilters,
    ));
  }
}

/// @nodoc

class _$_FetchJobsEvent implements _FetchJobsEvent {
  const _$_FetchJobsEvent({required this.filter});

  @override
  final JobFilters filter;

  @override
  String toString() {
    return 'JobsEvent.fetchJobs(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchJobsEvent &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchJobsEventCopyWith<_$_FetchJobsEvent> get copyWith =>
      __$$_FetchJobsEventCopyWithImpl<_$_FetchJobsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobFilters filter) fetchJobs,
    required TResult Function(String query) changeSearchQuery,
  }) {
    return fetchJobs(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JobFilters filter)? fetchJobs,
    TResult? Function(String query)? changeSearchQuery,
  }) {
    return fetchJobs?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobFilters filter)? fetchJobs,
    TResult Function(String query)? changeSearchQuery,
    required TResult orElse(),
  }) {
    if (fetchJobs != null) {
      return fetchJobs(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobsEvent value) fetchJobs,
    required TResult Function(_ChangeSearchQueryEvent value) changeSearchQuery,
  }) {
    return fetchJobs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobsEvent value)? fetchJobs,
    TResult? Function(_ChangeSearchQueryEvent value)? changeSearchQuery,
  }) {
    return fetchJobs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobsEvent value)? fetchJobs,
    TResult Function(_ChangeSearchQueryEvent value)? changeSearchQuery,
    required TResult orElse(),
  }) {
    if (fetchJobs != null) {
      return fetchJobs(this);
    }
    return orElse();
  }
}

abstract class _FetchJobsEvent implements JobsEvent {
  const factory _FetchJobsEvent({required final JobFilters filter}) =
      _$_FetchJobsEvent;

  JobFilters get filter;
  @JsonKey(ignore: true)
  _$$_FetchJobsEventCopyWith<_$_FetchJobsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeSearchQueryEventCopyWith<$Res> {
  factory _$$_ChangeSearchQueryEventCopyWith(_$_ChangeSearchQueryEvent value,
          $Res Function(_$_ChangeSearchQueryEvent) then) =
      __$$_ChangeSearchQueryEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_ChangeSearchQueryEventCopyWithImpl<$Res>
    extends _$JobsEventCopyWithImpl<$Res, _$_ChangeSearchQueryEvent>
    implements _$$_ChangeSearchQueryEventCopyWith<$Res> {
  __$$_ChangeSearchQueryEventCopyWithImpl(_$_ChangeSearchQueryEvent _value,
      $Res Function(_$_ChangeSearchQueryEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_ChangeSearchQueryEvent(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeSearchQueryEvent implements _ChangeSearchQueryEvent {
  const _$_ChangeSearchQueryEvent({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'JobsEvent.changeSearchQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSearchQueryEvent &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSearchQueryEventCopyWith<_$_ChangeSearchQueryEvent> get copyWith =>
      __$$_ChangeSearchQueryEventCopyWithImpl<_$_ChangeSearchQueryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobFilters filter) fetchJobs,
    required TResult Function(String query) changeSearchQuery,
  }) {
    return changeSearchQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JobFilters filter)? fetchJobs,
    TResult? Function(String query)? changeSearchQuery,
  }) {
    return changeSearchQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobFilters filter)? fetchJobs,
    TResult Function(String query)? changeSearchQuery,
    required TResult orElse(),
  }) {
    if (changeSearchQuery != null) {
      return changeSearchQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobsEvent value) fetchJobs,
    required TResult Function(_ChangeSearchQueryEvent value) changeSearchQuery,
  }) {
    return changeSearchQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobsEvent value)? fetchJobs,
    TResult? Function(_ChangeSearchQueryEvent value)? changeSearchQuery,
  }) {
    return changeSearchQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobsEvent value)? fetchJobs,
    TResult Function(_ChangeSearchQueryEvent value)? changeSearchQuery,
    required TResult orElse(),
  }) {
    if (changeSearchQuery != null) {
      return changeSearchQuery(this);
    }
    return orElse();
  }
}

abstract class _ChangeSearchQueryEvent implements JobsEvent {
  const factory _ChangeSearchQueryEvent({required final String query}) =
      _$_ChangeSearchQueryEvent;

  String get query;
  @JsonKey(ignore: true)
  _$$_ChangeSearchQueryEventCopyWith<_$_ChangeSearchQueryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JobsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<JobOffer> jobs, JobFilters filter) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<JobOffer> jobs, JobFilters filter)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<JobOffer> jobs, JobFilters filter)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsStateCopyWith<$Res> {
  factory $JobsStateCopyWith(JobsState value, $Res Function(JobsState) then) =
      _$JobsStateCopyWithImpl<$Res, JobsState>;
}

/// @nodoc
class _$JobsStateCopyWithImpl<$Res, $Val extends JobsState>
    implements $JobsStateCopyWith<$Res> {
  _$JobsStateCopyWithImpl(this._value, this._then);

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
    extends _$JobsStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'JobsState.initial()';
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
    required TResult Function(List<JobOffer> jobs, JobFilters filter) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<JobOffer> jobs, JobFilters filter)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<JobOffer> jobs, JobFilters filter)? loaded,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends JobsState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JobOffer> jobs, JobFilters filter});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$JobsStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobs = null,
    Object? filter = null,
  }) {
    return _then(_$_LoadedState(
      jobs: null == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobOffer>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as JobFilters,
    ));
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState(
      {required final List<JobOffer> jobs, required this.filter})
      : _jobs = jobs,
        super._();

  final List<JobOffer> _jobs;
  @override
  List<JobOffer> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  @override
  final JobFilters filter;

  @override
  String toString() {
    return 'JobsState.loaded(jobs: $jobs, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            const DeepCollectionEquality().equals(other._jobs, _jobs) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_jobs), filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<JobOffer> jobs, JobFilters filter) loaded,
  }) {
    return loaded(jobs, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<JobOffer> jobs, JobFilters filter)? loaded,
  }) {
    return loaded?.call(jobs, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<JobOffer> jobs, JobFilters filter)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(jobs, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends JobsState {
  const factory _LoadedState(
      {required final List<JobOffer> jobs,
      required final JobFilters filter}) = _$_LoadedState;
  const _LoadedState._() : super._();

  List<JobOffer> get jobs;
  JobFilters get filter;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
