// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_job_applications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminJobApplicationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int elementsPerPage)
        fetchJobApplications,
    required TResult Function(String searchTerm) changeSearchTerm,
    required TResult Function(String id, JobApplication jobApplication)
        replaceJobApplication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage)? fetchJobApplications,
    TResult? Function(String searchTerm)? changeSearchTerm,
    TResult? Function(String id, JobApplication jobApplication)?
        replaceJobApplication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage)? fetchJobApplications,
    TResult Function(String searchTerm)? changeSearchTerm,
    TResult Function(String id, JobApplication jobApplication)?
        replaceJobApplication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobApplicationsEvent value)
        fetchJobApplications,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
    required TResult Function(_ReplaceJobApplicationEvent value)
        replaceJobApplication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobApplicationsEvent value)? fetchJobApplications,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult? Function(_ReplaceJobApplicationEvent value)? replaceJobApplication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobApplicationsEvent value)? fetchJobApplications,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult Function(_ReplaceJobApplicationEvent value)? replaceJobApplication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminJobApplicationsEventCopyWith<$Res> {
  factory $AdminJobApplicationsEventCopyWith(AdminJobApplicationsEvent value,
          $Res Function(AdminJobApplicationsEvent) then) =
      _$AdminJobApplicationsEventCopyWithImpl<$Res, AdminJobApplicationsEvent>;
}

/// @nodoc
class _$AdminJobApplicationsEventCopyWithImpl<$Res,
        $Val extends AdminJobApplicationsEvent>
    implements $AdminJobApplicationsEventCopyWith<$Res> {
  _$AdminJobApplicationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchJobApplicationsEventCopyWith<$Res> {
  factory _$$_FetchJobApplicationsEventCopyWith(
          _$_FetchJobApplicationsEvent value,
          $Res Function(_$_FetchJobApplicationsEvent) then) =
      __$$_FetchJobApplicationsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int elementsPerPage});
}

/// @nodoc
class __$$_FetchJobApplicationsEventCopyWithImpl<$Res>
    extends _$AdminJobApplicationsEventCopyWithImpl<$Res,
        _$_FetchJobApplicationsEvent>
    implements _$$_FetchJobApplicationsEventCopyWith<$Res> {
  __$$_FetchJobApplicationsEventCopyWithImpl(
      _$_FetchJobApplicationsEvent _value,
      $Res Function(_$_FetchJobApplicationsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? elementsPerPage = null,
  }) {
    return _then(_$_FetchJobApplicationsEvent(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      elementsPerPage: null == elementsPerPage
          ? _value.elementsPerPage
          : elementsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchJobApplicationsEvent implements _FetchJobApplicationsEvent {
  const _$_FetchJobApplicationsEvent(
      {required this.page, required this.elementsPerPage});

  @override
  final int page;
  @override
  final int elementsPerPage;

  @override
  String toString() {
    return 'AdminJobApplicationsEvent.fetchJobApplications(page: $page, elementsPerPage: $elementsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchJobApplicationsEvent &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.elementsPerPage, elementsPerPage) ||
                other.elementsPerPage == elementsPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, elementsPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchJobApplicationsEventCopyWith<_$_FetchJobApplicationsEvent>
      get copyWith => __$$_FetchJobApplicationsEventCopyWithImpl<
          _$_FetchJobApplicationsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int elementsPerPage)
        fetchJobApplications,
    required TResult Function(String searchTerm) changeSearchTerm,
    required TResult Function(String id, JobApplication jobApplication)
        replaceJobApplication,
  }) {
    return fetchJobApplications(page, elementsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage)? fetchJobApplications,
    TResult? Function(String searchTerm)? changeSearchTerm,
    TResult? Function(String id, JobApplication jobApplication)?
        replaceJobApplication,
  }) {
    return fetchJobApplications?.call(page, elementsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage)? fetchJobApplications,
    TResult Function(String searchTerm)? changeSearchTerm,
    TResult Function(String id, JobApplication jobApplication)?
        replaceJobApplication,
    required TResult orElse(),
  }) {
    if (fetchJobApplications != null) {
      return fetchJobApplications(page, elementsPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobApplicationsEvent value)
        fetchJobApplications,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
    required TResult Function(_ReplaceJobApplicationEvent value)
        replaceJobApplication,
  }) {
    return fetchJobApplications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobApplicationsEvent value)? fetchJobApplications,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult? Function(_ReplaceJobApplicationEvent value)? replaceJobApplication,
  }) {
    return fetchJobApplications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobApplicationsEvent value)? fetchJobApplications,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult Function(_ReplaceJobApplicationEvent value)? replaceJobApplication,
    required TResult orElse(),
  }) {
    if (fetchJobApplications != null) {
      return fetchJobApplications(this);
    }
    return orElse();
  }
}

abstract class _FetchJobApplicationsEvent implements AdminJobApplicationsEvent {
  const factory _FetchJobApplicationsEvent(
      {required final int page,
      required final int elementsPerPage}) = _$_FetchJobApplicationsEvent;

  int get page;
  int get elementsPerPage;
  @JsonKey(ignore: true)
  _$$_FetchJobApplicationsEventCopyWith<_$_FetchJobApplicationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeSearchTermEventCopyWith<$Res> {
  factory _$$_ChangeSearchTermEventCopyWith(_$_ChangeSearchTermEvent value,
          $Res Function(_$_ChangeSearchTermEvent) then) =
      __$$_ChangeSearchTermEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchTerm});
}

/// @nodoc
class __$$_ChangeSearchTermEventCopyWithImpl<$Res>
    extends _$AdminJobApplicationsEventCopyWithImpl<$Res,
        _$_ChangeSearchTermEvent>
    implements _$$_ChangeSearchTermEventCopyWith<$Res> {
  __$$_ChangeSearchTermEventCopyWithImpl(_$_ChangeSearchTermEvent _value,
      $Res Function(_$_ChangeSearchTermEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = null,
  }) {
    return _then(_$_ChangeSearchTermEvent(
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeSearchTermEvent implements _ChangeSearchTermEvent {
  const _$_ChangeSearchTermEvent({required this.searchTerm});

  @override
  final String searchTerm;

  @override
  String toString() {
    return 'AdminJobApplicationsEvent.changeSearchTerm(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSearchTermEvent &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSearchTermEventCopyWith<_$_ChangeSearchTermEvent> get copyWith =>
      __$$_ChangeSearchTermEventCopyWithImpl<_$_ChangeSearchTermEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int elementsPerPage)
        fetchJobApplications,
    required TResult Function(String searchTerm) changeSearchTerm,
    required TResult Function(String id, JobApplication jobApplication)
        replaceJobApplication,
  }) {
    return changeSearchTerm(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage)? fetchJobApplications,
    TResult? Function(String searchTerm)? changeSearchTerm,
    TResult? Function(String id, JobApplication jobApplication)?
        replaceJobApplication,
  }) {
    return changeSearchTerm?.call(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage)? fetchJobApplications,
    TResult Function(String searchTerm)? changeSearchTerm,
    TResult Function(String id, JobApplication jobApplication)?
        replaceJobApplication,
    required TResult orElse(),
  }) {
    if (changeSearchTerm != null) {
      return changeSearchTerm(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobApplicationsEvent value)
        fetchJobApplications,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
    required TResult Function(_ReplaceJobApplicationEvent value)
        replaceJobApplication,
  }) {
    return changeSearchTerm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobApplicationsEvent value)? fetchJobApplications,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult? Function(_ReplaceJobApplicationEvent value)? replaceJobApplication,
  }) {
    return changeSearchTerm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobApplicationsEvent value)? fetchJobApplications,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult Function(_ReplaceJobApplicationEvent value)? replaceJobApplication,
    required TResult orElse(),
  }) {
    if (changeSearchTerm != null) {
      return changeSearchTerm(this);
    }
    return orElse();
  }
}

abstract class _ChangeSearchTermEvent implements AdminJobApplicationsEvent {
  const factory _ChangeSearchTermEvent({required final String searchTerm}) =
      _$_ChangeSearchTermEvent;

  String get searchTerm;
  @JsonKey(ignore: true)
  _$$_ChangeSearchTermEventCopyWith<_$_ChangeSearchTermEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReplaceJobApplicationEventCopyWith<$Res> {
  factory _$$_ReplaceJobApplicationEventCopyWith(
          _$_ReplaceJobApplicationEvent value,
          $Res Function(_$_ReplaceJobApplicationEvent) then) =
      __$$_ReplaceJobApplicationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, JobApplication jobApplication});

  $JobApplicationCopyWith<$Res> get jobApplication;
}

/// @nodoc
class __$$_ReplaceJobApplicationEventCopyWithImpl<$Res>
    extends _$AdminJobApplicationsEventCopyWithImpl<$Res,
        _$_ReplaceJobApplicationEvent>
    implements _$$_ReplaceJobApplicationEventCopyWith<$Res> {
  __$$_ReplaceJobApplicationEventCopyWithImpl(
      _$_ReplaceJobApplicationEvent _value,
      $Res Function(_$_ReplaceJobApplicationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jobApplication = null,
  }) {
    return _then(_$_ReplaceJobApplicationEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_ReplaceJobApplicationEvent implements _ReplaceJobApplicationEvent {
  const _$_ReplaceJobApplicationEvent(
      {required this.id, required this.jobApplication});

  @override
  final String id;
  @override
  final JobApplication jobApplication;

  @override
  String toString() {
    return 'AdminJobApplicationsEvent.replaceJobApplication(id: $id, jobApplication: $jobApplication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplaceJobApplicationEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jobApplication, jobApplication) ||
                other.jobApplication == jobApplication));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, jobApplication);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplaceJobApplicationEventCopyWith<_$_ReplaceJobApplicationEvent>
      get copyWith => __$$_ReplaceJobApplicationEventCopyWithImpl<
          _$_ReplaceJobApplicationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int elementsPerPage)
        fetchJobApplications,
    required TResult Function(String searchTerm) changeSearchTerm,
    required TResult Function(String id, JobApplication jobApplication)
        replaceJobApplication,
  }) {
    return replaceJobApplication(id, jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage)? fetchJobApplications,
    TResult? Function(String searchTerm)? changeSearchTerm,
    TResult? Function(String id, JobApplication jobApplication)?
        replaceJobApplication,
  }) {
    return replaceJobApplication?.call(id, jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage)? fetchJobApplications,
    TResult Function(String searchTerm)? changeSearchTerm,
    TResult Function(String id, JobApplication jobApplication)?
        replaceJobApplication,
    required TResult orElse(),
  }) {
    if (replaceJobApplication != null) {
      return replaceJobApplication(id, jobApplication);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobApplicationsEvent value)
        fetchJobApplications,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
    required TResult Function(_ReplaceJobApplicationEvent value)
        replaceJobApplication,
  }) {
    return replaceJobApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobApplicationsEvent value)? fetchJobApplications,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult? Function(_ReplaceJobApplicationEvent value)? replaceJobApplication,
  }) {
    return replaceJobApplication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobApplicationsEvent value)? fetchJobApplications,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult Function(_ReplaceJobApplicationEvent value)? replaceJobApplication,
    required TResult orElse(),
  }) {
    if (replaceJobApplication != null) {
      return replaceJobApplication(this);
    }
    return orElse();
  }
}

abstract class _ReplaceJobApplicationEvent
    implements AdminJobApplicationsEvent {
  const factory _ReplaceJobApplicationEvent(
          {required final String id,
          required final JobApplication jobApplication}) =
      _$_ReplaceJobApplicationEvent;

  String get id;
  JobApplication get jobApplication;
  @JsonKey(ignore: true)
  _$$_ReplaceJobApplicationEventCopyWith<_$_ReplaceJobApplicationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminJobApplicationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TableData<List<JobApplication>> tableData, String searchTerm)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TableData<List<JobApplication>> tableData, String searchTerm)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TableData<List<JobApplication>> tableData, String searchTerm)?
        loaded,
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
abstract class $AdminJobApplicationsStateCopyWith<$Res> {
  factory $AdminJobApplicationsStateCopyWith(AdminJobApplicationsState value,
          $Res Function(AdminJobApplicationsState) then) =
      _$AdminJobApplicationsStateCopyWithImpl<$Res, AdminJobApplicationsState>;
}

/// @nodoc
class _$AdminJobApplicationsStateCopyWithImpl<$Res,
        $Val extends AdminJobApplicationsState>
    implements $AdminJobApplicationsStateCopyWith<$Res> {
  _$AdminJobApplicationsStateCopyWithImpl(this._value, this._then);

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
    extends _$AdminJobApplicationsStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'AdminJobApplicationsState.initial()';
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
    required TResult Function(
            TableData<List<JobApplication>> tableData, String searchTerm)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TableData<List<JobApplication>> tableData, String searchTerm)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TableData<List<JobApplication>> tableData, String searchTerm)?
        loaded,
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

abstract class _InitialState extends AdminJobApplicationsState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({TableData<List<JobApplication>> tableData, String searchTerm});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$AdminJobApplicationsStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableData = null,
    Object? searchTerm = null,
  }) {
    return _then(_$_LoadedState(
      tableData: null == tableData
          ? _value.tableData
          : tableData // ignore: cast_nullable_to_non_nullable
              as TableData<List<JobApplication>>,
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState({required this.tableData, required this.searchTerm})
      : super._();

  @override
  final TableData<List<JobApplication>> tableData;
  @override
  final String searchTerm;

  @override
  String toString() {
    return 'AdminJobApplicationsState.loaded(tableData: $tableData, searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            (identical(other.tableData, tableData) ||
                other.tableData == tableData) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tableData, searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TableData<List<JobApplication>> tableData, String searchTerm)
        loaded,
  }) {
    return loaded(tableData, searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TableData<List<JobApplication>> tableData, String searchTerm)?
        loaded,
  }) {
    return loaded?.call(tableData, searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TableData<List<JobApplication>> tableData, String searchTerm)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tableData, searchTerm);
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

abstract class _LoadedState extends AdminJobApplicationsState {
  const factory _LoadedState(
      {required final TableData<List<JobApplication>> tableData,
      required final String searchTerm}) = _$_LoadedState;
  const _LoadedState._() : super._();

  TableData<List<JobApplication>> get tableData;
  String get searchTerm;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
