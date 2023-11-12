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
    required TResult Function(String query, String? city) search,
    required TResult Function(List<String>? types, String? area) applyFilters,
    required TResult Function() resetFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JobFilters filter)? fetchJobs,
    TResult? Function(String query, String? city)? search,
    TResult? Function(List<String>? types, String? area)? applyFilters,
    TResult? Function()? resetFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobFilters filter)? fetchJobs,
    TResult Function(String query, String? city)? search,
    TResult Function(List<String>? types, String? area)? applyFilters,
    TResult Function()? resetFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobsEvent value) fetchJobs,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_ApplyFiltersEvent value) applyFilters,
    required TResult Function(_ResetFiltersEvent value) resetFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobsEvent value)? fetchJobs,
    TResult? Function(_SearchEvent value)? search,
    TResult? Function(_ApplyFiltersEvent value)? applyFilters,
    TResult? Function(_ResetFiltersEvent value)? resetFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobsEvent value)? fetchJobs,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_ApplyFiltersEvent value)? applyFilters,
    TResult Function(_ResetFiltersEvent value)? resetFilters,
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
    required TResult Function(String query, String? city) search,
    required TResult Function(List<String>? types, String? area) applyFilters,
    required TResult Function() resetFilters,
  }) {
    return fetchJobs(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JobFilters filter)? fetchJobs,
    TResult? Function(String query, String? city)? search,
    TResult? Function(List<String>? types, String? area)? applyFilters,
    TResult? Function()? resetFilters,
  }) {
    return fetchJobs?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobFilters filter)? fetchJobs,
    TResult Function(String query, String? city)? search,
    TResult Function(List<String>? types, String? area)? applyFilters,
    TResult Function()? resetFilters,
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
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_ApplyFiltersEvent value) applyFilters,
    required TResult Function(_ResetFiltersEvent value) resetFilters,
  }) {
    return fetchJobs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobsEvent value)? fetchJobs,
    TResult? Function(_SearchEvent value)? search,
    TResult? Function(_ApplyFiltersEvent value)? applyFilters,
    TResult? Function(_ResetFiltersEvent value)? resetFilters,
  }) {
    return fetchJobs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobsEvent value)? fetchJobs,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_ApplyFiltersEvent value)? applyFilters,
    TResult Function(_ResetFiltersEvent value)? resetFilters,
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
abstract class _$$_SearchEventCopyWith<$Res> {
  factory _$$_SearchEventCopyWith(
          _$_SearchEvent value, $Res Function(_$_SearchEvent) then) =
      __$$_SearchEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String? city});
}

/// @nodoc
class __$$_SearchEventCopyWithImpl<$Res>
    extends _$JobsEventCopyWithImpl<$Res, _$_SearchEvent>
    implements _$$_SearchEventCopyWith<$Res> {
  __$$_SearchEventCopyWithImpl(
      _$_SearchEvent _value, $Res Function(_$_SearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? city = freezed,
  }) {
    return _then(_$_SearchEvent(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchEvent implements _SearchEvent {
  const _$_SearchEvent({required this.query, required this.city});

  @override
  final String query;
  @override
  final String? city;

  @override
  String toString() {
    return 'JobsEvent.search(query: $query, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchEvent &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchEventCopyWith<_$_SearchEvent> get copyWith =>
      __$$_SearchEventCopyWithImpl<_$_SearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobFilters filter) fetchJobs,
    required TResult Function(String query, String? city) search,
    required TResult Function(List<String>? types, String? area) applyFilters,
    required TResult Function() resetFilters,
  }) {
    return search(query, city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JobFilters filter)? fetchJobs,
    TResult? Function(String query, String? city)? search,
    TResult? Function(List<String>? types, String? area)? applyFilters,
    TResult? Function()? resetFilters,
  }) {
    return search?.call(query, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobFilters filter)? fetchJobs,
    TResult Function(String query, String? city)? search,
    TResult Function(List<String>? types, String? area)? applyFilters,
    TResult Function()? resetFilters,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobsEvent value) fetchJobs,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_ApplyFiltersEvent value) applyFilters,
    required TResult Function(_ResetFiltersEvent value) resetFilters,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobsEvent value)? fetchJobs,
    TResult? Function(_SearchEvent value)? search,
    TResult? Function(_ApplyFiltersEvent value)? applyFilters,
    TResult? Function(_ResetFiltersEvent value)? resetFilters,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobsEvent value)? fetchJobs,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_ApplyFiltersEvent value)? applyFilters,
    TResult Function(_ResetFiltersEvent value)? resetFilters,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchEvent implements JobsEvent {
  const factory _SearchEvent(
      {required final String query,
      required final String? city}) = _$_SearchEvent;

  String get query;
  String? get city;
  @JsonKey(ignore: true)
  _$$_SearchEventCopyWith<_$_SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApplyFiltersEventCopyWith<$Res> {
  factory _$$_ApplyFiltersEventCopyWith(_$_ApplyFiltersEvent value,
          $Res Function(_$_ApplyFiltersEvent) then) =
      __$$_ApplyFiltersEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String>? types, String? area});
}

/// @nodoc
class __$$_ApplyFiltersEventCopyWithImpl<$Res>
    extends _$JobsEventCopyWithImpl<$Res, _$_ApplyFiltersEvent>
    implements _$$_ApplyFiltersEventCopyWith<$Res> {
  __$$_ApplyFiltersEventCopyWithImpl(
      _$_ApplyFiltersEvent _value, $Res Function(_$_ApplyFiltersEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = freezed,
    Object? area = freezed,
  }) {
    return _then(_$_ApplyFiltersEvent(
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ApplyFiltersEvent implements _ApplyFiltersEvent {
  const _$_ApplyFiltersEvent(
      {required final List<String>? types, required this.area})
      : _types = types;

  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? area;

  @override
  String toString() {
    return 'JobsEvent.applyFilters(types: $types, area: $area)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplyFiltersEvent &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.area, area) || other.area == area));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_types), area);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplyFiltersEventCopyWith<_$_ApplyFiltersEvent> get copyWith =>
      __$$_ApplyFiltersEventCopyWithImpl<_$_ApplyFiltersEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobFilters filter) fetchJobs,
    required TResult Function(String query, String? city) search,
    required TResult Function(List<String>? types, String? area) applyFilters,
    required TResult Function() resetFilters,
  }) {
    return applyFilters(types, area);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JobFilters filter)? fetchJobs,
    TResult? Function(String query, String? city)? search,
    TResult? Function(List<String>? types, String? area)? applyFilters,
    TResult? Function()? resetFilters,
  }) {
    return applyFilters?.call(types, area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobFilters filter)? fetchJobs,
    TResult Function(String query, String? city)? search,
    TResult Function(List<String>? types, String? area)? applyFilters,
    TResult Function()? resetFilters,
    required TResult orElse(),
  }) {
    if (applyFilters != null) {
      return applyFilters(types, area);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobsEvent value) fetchJobs,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_ApplyFiltersEvent value) applyFilters,
    required TResult Function(_ResetFiltersEvent value) resetFilters,
  }) {
    return applyFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobsEvent value)? fetchJobs,
    TResult? Function(_SearchEvent value)? search,
    TResult? Function(_ApplyFiltersEvent value)? applyFilters,
    TResult? Function(_ResetFiltersEvent value)? resetFilters,
  }) {
    return applyFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobsEvent value)? fetchJobs,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_ApplyFiltersEvent value)? applyFilters,
    TResult Function(_ResetFiltersEvent value)? resetFilters,
    required TResult orElse(),
  }) {
    if (applyFilters != null) {
      return applyFilters(this);
    }
    return orElse();
  }
}

abstract class _ApplyFiltersEvent implements JobsEvent {
  const factory _ApplyFiltersEvent(
      {required final List<String>? types,
      required final String? area}) = _$_ApplyFiltersEvent;

  List<String>? get types;
  String? get area;
  @JsonKey(ignore: true)
  _$$_ApplyFiltersEventCopyWith<_$_ApplyFiltersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetFiltersEventCopyWith<$Res> {
  factory _$$_ResetFiltersEventCopyWith(_$_ResetFiltersEvent value,
          $Res Function(_$_ResetFiltersEvent) then) =
      __$$_ResetFiltersEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetFiltersEventCopyWithImpl<$Res>
    extends _$JobsEventCopyWithImpl<$Res, _$_ResetFiltersEvent>
    implements _$$_ResetFiltersEventCopyWith<$Res> {
  __$$_ResetFiltersEventCopyWithImpl(
      _$_ResetFiltersEvent _value, $Res Function(_$_ResetFiltersEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetFiltersEvent implements _ResetFiltersEvent {
  const _$_ResetFiltersEvent();

  @override
  String toString() {
    return 'JobsEvent.resetFilters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetFiltersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobFilters filter) fetchJobs,
    required TResult Function(String query, String? city) search,
    required TResult Function(List<String>? types, String? area) applyFilters,
    required TResult Function() resetFilters,
  }) {
    return resetFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JobFilters filter)? fetchJobs,
    TResult? Function(String query, String? city)? search,
    TResult? Function(List<String>? types, String? area)? applyFilters,
    TResult? Function()? resetFilters,
  }) {
    return resetFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobFilters filter)? fetchJobs,
    TResult Function(String query, String? city)? search,
    TResult Function(List<String>? types, String? area)? applyFilters,
    TResult Function()? resetFilters,
    required TResult orElse(),
  }) {
    if (resetFilters != null) {
      return resetFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobsEvent value) fetchJobs,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_ApplyFiltersEvent value) applyFilters,
    required TResult Function(_ResetFiltersEvent value) resetFilters,
  }) {
    return resetFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobsEvent value)? fetchJobs,
    TResult? Function(_SearchEvent value)? search,
    TResult? Function(_ApplyFiltersEvent value)? applyFilters,
    TResult? Function(_ResetFiltersEvent value)? resetFilters,
  }) {
    return resetFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobsEvent value)? fetchJobs,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_ApplyFiltersEvent value)? applyFilters,
    TResult Function(_ResetFiltersEvent value)? resetFilters,
    required TResult orElse(),
  }) {
    if (resetFilters != null) {
      return resetFilters(this);
    }
    return orElse();
  }
}

abstract class _ResetFiltersEvent implements JobsEvent {
  const factory _ResetFiltersEvent() = _$_ResetFiltersEvent;
}

/// @nodoc
mixin _$JobsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TableData<List<JobOffer>> jobs, JobFilters filter)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TableData<List<JobOffer>> jobs, JobFilters filter)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TableData<List<JobOffer>> jobs, JobFilters filter)? loaded,
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
    required TResult Function(TableData<List<JobOffer>> jobs, JobFilters filter)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TableData<List<JobOffer>> jobs, JobFilters filter)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TableData<List<JobOffer>> jobs, JobFilters filter)? loaded,
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
  $Res call({TableData<List<JobOffer>> jobs, JobFilters filter});
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
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as TableData<List<JobOffer>>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as JobFilters,
    ));
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState({required this.jobs, required this.filter}) : super._();

  @override
  final TableData<List<JobOffer>> jobs;
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
            (identical(other.jobs, jobs) || other.jobs == jobs) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jobs, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TableData<List<JobOffer>> jobs, JobFilters filter)
        loaded,
  }) {
    return loaded(jobs, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TableData<List<JobOffer>> jobs, JobFilters filter)?
        loaded,
  }) {
    return loaded?.call(jobs, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TableData<List<JobOffer>> jobs, JobFilters filter)? loaded,
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
      {required final TableData<List<JobOffer>> jobs,
      required final JobFilters filter}) = _$_LoadedState;
  const _LoadedState._() : super._();

  TableData<List<JobOffer>> get jobs;
  JobFilters get filter;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
