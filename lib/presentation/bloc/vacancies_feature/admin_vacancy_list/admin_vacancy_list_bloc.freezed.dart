// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_vacancy_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminVacancyListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int elementsPerPage) fetchData,
    required TResult Function(String searchTerm) changeSearchTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage)? fetchData,
    TResult? Function(String searchTerm)? changeSearchTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage)? fetchData,
    TResult Function(String searchTerm)? changeSearchTerm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialDataEvent value) fetchData,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialDataEvent value)? fetchData,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialDataEvent value)? fetchData,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminVacancyListEventCopyWith<$Res> {
  factory $AdminVacancyListEventCopyWith(AdminVacancyListEvent value,
          $Res Function(AdminVacancyListEvent) then) =
      _$AdminVacancyListEventCopyWithImpl<$Res, AdminVacancyListEvent>;
}

/// @nodoc
class _$AdminVacancyListEventCopyWithImpl<$Res,
        $Val extends AdminVacancyListEvent>
    implements $AdminVacancyListEventCopyWith<$Res> {
  _$AdminVacancyListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchInitialDataEventCopyWith<$Res> {
  factory _$$_FetchInitialDataEventCopyWith(_$_FetchInitialDataEvent value,
          $Res Function(_$_FetchInitialDataEvent) then) =
      __$$_FetchInitialDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int elementsPerPage});
}

/// @nodoc
class __$$_FetchInitialDataEventCopyWithImpl<$Res>
    extends _$AdminVacancyListEventCopyWithImpl<$Res, _$_FetchInitialDataEvent>
    implements _$$_FetchInitialDataEventCopyWith<$Res> {
  __$$_FetchInitialDataEventCopyWithImpl(_$_FetchInitialDataEvent _value,
      $Res Function(_$_FetchInitialDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? elementsPerPage = null,
  }) {
    return _then(_$_FetchInitialDataEvent(
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

class _$_FetchInitialDataEvent implements _FetchInitialDataEvent {
  const _$_FetchInitialDataEvent(
      {required this.page, required this.elementsPerPage});

  @override
  final int page;
  @override
  final int elementsPerPage;

  @override
  String toString() {
    return 'AdminVacancyListEvent.fetchData(page: $page, elementsPerPage: $elementsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchInitialDataEvent &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.elementsPerPage, elementsPerPage) ||
                other.elementsPerPage == elementsPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, elementsPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchInitialDataEventCopyWith<_$_FetchInitialDataEvent> get copyWith =>
      __$$_FetchInitialDataEventCopyWithImpl<_$_FetchInitialDataEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int elementsPerPage) fetchData,
    required TResult Function(String searchTerm) changeSearchTerm,
  }) {
    return fetchData(page, elementsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage)? fetchData,
    TResult? Function(String searchTerm)? changeSearchTerm,
  }) {
    return fetchData?.call(page, elementsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage)? fetchData,
    TResult Function(String searchTerm)? changeSearchTerm,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(page, elementsPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialDataEvent value) fetchData,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialDataEvent value)? fetchData,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialDataEvent value)? fetchData,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchInitialDataEvent implements AdminVacancyListEvent {
  const factory _FetchInitialDataEvent(
      {required final int page,
      required final int elementsPerPage}) = _$_FetchInitialDataEvent;

  int get page;
  int get elementsPerPage;
  @JsonKey(ignore: true)
  _$$_FetchInitialDataEventCopyWith<_$_FetchInitialDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$AdminVacancyListEventCopyWithImpl<$Res, _$_ChangeSearchTermEvent>
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
    return 'AdminVacancyListEvent.changeSearchTerm(searchTerm: $searchTerm)';
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
    required TResult Function(int page, int elementsPerPage) fetchData,
    required TResult Function(String searchTerm) changeSearchTerm,
  }) {
    return changeSearchTerm(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage)? fetchData,
    TResult? Function(String searchTerm)? changeSearchTerm,
  }) {
    return changeSearchTerm?.call(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage)? fetchData,
    TResult Function(String searchTerm)? changeSearchTerm,
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
    required TResult Function(_FetchInitialDataEvent value) fetchData,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
  }) {
    return changeSearchTerm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialDataEvent value)? fetchData,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
  }) {
    return changeSearchTerm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialDataEvent value)? fetchData,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    required TResult orElse(),
  }) {
    if (changeSearchTerm != null) {
      return changeSearchTerm(this);
    }
    return orElse();
  }
}

abstract class _ChangeSearchTermEvent implements AdminVacancyListEvent {
  const factory _ChangeSearchTermEvent({required final String searchTerm}) =
      _$_ChangeSearchTermEvent;

  String get searchTerm;
  @JsonKey(ignore: true)
  _$$_ChangeSearchTermEventCopyWith<_$_ChangeSearchTermEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminVacancyListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TableData<List<Vacancy>> tableData, String searchTerm)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TableData<List<Vacancy>> tableData, String searchTerm)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TableData<List<Vacancy>> tableData, String searchTerm)?
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
abstract class $AdminVacancyListStateCopyWith<$Res> {
  factory $AdminVacancyListStateCopyWith(AdminVacancyListState value,
          $Res Function(AdminVacancyListState) then) =
      _$AdminVacancyListStateCopyWithImpl<$Res, AdminVacancyListState>;
}

/// @nodoc
class _$AdminVacancyListStateCopyWithImpl<$Res,
        $Val extends AdminVacancyListState>
    implements $AdminVacancyListStateCopyWith<$Res> {
  _$AdminVacancyListStateCopyWithImpl(this._value, this._then);

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
    extends _$AdminVacancyListStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'AdminVacancyListState.initial()';
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
            TableData<List<Vacancy>> tableData, String searchTerm)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TableData<List<Vacancy>> tableData, String searchTerm)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TableData<List<Vacancy>> tableData, String searchTerm)?
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

abstract class _InitialState extends AdminVacancyListState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({TableData<List<Vacancy>> tableData, String searchTerm});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$AdminVacancyListStateCopyWithImpl<$Res, _$_LoadedState>
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
              as TableData<List<Vacancy>>,
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
  final TableData<List<Vacancy>> tableData;
  @override
  final String searchTerm;

  @override
  String toString() {
    return 'AdminVacancyListState.loaded(tableData: $tableData, searchTerm: $searchTerm)';
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
            TableData<List<Vacancy>> tableData, String searchTerm)
        loaded,
  }) {
    return loaded(tableData, searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TableData<List<Vacancy>> tableData, String searchTerm)?
        loaded,
  }) {
    return loaded?.call(tableData, searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TableData<List<Vacancy>> tableData, String searchTerm)?
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

abstract class _LoadedState extends AdminVacancyListState {
  const factory _LoadedState(
      {required final TableData<List<Vacancy>> tableData,
      required final String searchTerm}) = _$_LoadedState;
  const _LoadedState._() : super._();

  TableData<List<Vacancy>> get tableData;
  String get searchTerm;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
