// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_holiday_requests_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminHolidayRequestsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int elementsPerPage, String? employeeId)
        fetchData,
    required TResult Function(String searchTerm) changeSearchTerm,
    required TResult Function(String id, HolidayRequest holiday) replaceHoliday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage, String? employeeId)?
        fetchData,
    TResult? Function(String searchTerm)? changeSearchTerm,
    TResult? Function(String id, HolidayRequest holiday)? replaceHoliday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage, String? employeeId)?
        fetchData,
    TResult Function(String searchTerm)? changeSearchTerm,
    TResult Function(String id, HolidayRequest holiday)? replaceHoliday,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
    required TResult Function(_ReplaceHolidayEvent value) replaceHoliday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult? Function(_ReplaceHolidayEvent value)? replaceHoliday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult Function(_ReplaceHolidayEvent value)? replaceHoliday,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminHolidayRequestsListEventCopyWith<$Res> {
  factory $AdminHolidayRequestsListEventCopyWith(
          AdminHolidayRequestsListEvent value,
          $Res Function(AdminHolidayRequestsListEvent) then) =
      _$AdminHolidayRequestsListEventCopyWithImpl<$Res,
          AdminHolidayRequestsListEvent>;
}

/// @nodoc
class _$AdminHolidayRequestsListEventCopyWithImpl<$Res,
        $Val extends AdminHolidayRequestsListEvent>
    implements $AdminHolidayRequestsListEventCopyWith<$Res> {
  _$AdminHolidayRequestsListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchDataEventCopyWith<$Res> {
  factory _$$_FetchDataEventCopyWith(
          _$_FetchDataEvent value, $Res Function(_$_FetchDataEvent) then) =
      __$$_FetchDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int elementsPerPage, String? employeeId});
}

/// @nodoc
class __$$_FetchDataEventCopyWithImpl<$Res>
    extends _$AdminHolidayRequestsListEventCopyWithImpl<$Res, _$_FetchDataEvent>
    implements _$$_FetchDataEventCopyWith<$Res> {
  __$$_FetchDataEventCopyWithImpl(
      _$_FetchDataEvent _value, $Res Function(_$_FetchDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? elementsPerPage = null,
    Object? employeeId = freezed,
  }) {
    return _then(_$_FetchDataEvent(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      elementsPerPage: null == elementsPerPage
          ? _value.elementsPerPage
          : elementsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchDataEvent implements _FetchDataEvent {
  const _$_FetchDataEvent(
      {required this.page, required this.elementsPerPage, this.employeeId});

  @override
  final int page;
  @override
  final int elementsPerPage;
  @override
  final String? employeeId;

  @override
  String toString() {
    return 'AdminHolidayRequestsListEvent.fetchData(page: $page, elementsPerPage: $elementsPerPage, employeeId: $employeeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchDataEvent &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.elementsPerPage, elementsPerPage) ||
                other.elementsPerPage == elementsPerPage) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, elementsPerPage, employeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchDataEventCopyWith<_$_FetchDataEvent> get copyWith =>
      __$$_FetchDataEventCopyWithImpl<_$_FetchDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int elementsPerPage, String? employeeId)
        fetchData,
    required TResult Function(String searchTerm) changeSearchTerm,
    required TResult Function(String id, HolidayRequest holiday) replaceHoliday,
  }) {
    return fetchData(page, elementsPerPage, employeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage, String? employeeId)?
        fetchData,
    TResult? Function(String searchTerm)? changeSearchTerm,
    TResult? Function(String id, HolidayRequest holiday)? replaceHoliday,
  }) {
    return fetchData?.call(page, elementsPerPage, employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage, String? employeeId)?
        fetchData,
    TResult Function(String searchTerm)? changeSearchTerm,
    TResult Function(String id, HolidayRequest holiday)? replaceHoliday,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(page, elementsPerPage, employeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
    required TResult Function(_ReplaceHolidayEvent value) replaceHoliday,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult? Function(_ReplaceHolidayEvent value)? replaceHoliday,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult Function(_ReplaceHolidayEvent value)? replaceHoliday,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchDataEvent implements AdminHolidayRequestsListEvent {
  const factory _FetchDataEvent(
      {required final int page,
      required final int elementsPerPage,
      final String? employeeId}) = _$_FetchDataEvent;

  int get page;
  int get elementsPerPage;
  String? get employeeId;
  @JsonKey(ignore: true)
  _$$_FetchDataEventCopyWith<_$_FetchDataEvent> get copyWith =>
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
    extends _$AdminHolidayRequestsListEventCopyWithImpl<$Res,
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
    return 'AdminHolidayRequestsListEvent.changeSearchTerm(searchTerm: $searchTerm)';
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
    required TResult Function(int page, int elementsPerPage, String? employeeId)
        fetchData,
    required TResult Function(String searchTerm) changeSearchTerm,
    required TResult Function(String id, HolidayRequest holiday) replaceHoliday,
  }) {
    return changeSearchTerm(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage, String? employeeId)?
        fetchData,
    TResult? Function(String searchTerm)? changeSearchTerm,
    TResult? Function(String id, HolidayRequest holiday)? replaceHoliday,
  }) {
    return changeSearchTerm?.call(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage, String? employeeId)?
        fetchData,
    TResult Function(String searchTerm)? changeSearchTerm,
    TResult Function(String id, HolidayRequest holiday)? replaceHoliday,
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
    required TResult Function(_FetchDataEvent value) fetchData,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
    required TResult Function(_ReplaceHolidayEvent value) replaceHoliday,
  }) {
    return changeSearchTerm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult? Function(_ReplaceHolidayEvent value)? replaceHoliday,
  }) {
    return changeSearchTerm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult Function(_ReplaceHolidayEvent value)? replaceHoliday,
    required TResult orElse(),
  }) {
    if (changeSearchTerm != null) {
      return changeSearchTerm(this);
    }
    return orElse();
  }
}

abstract class _ChangeSearchTermEvent implements AdminHolidayRequestsListEvent {
  const factory _ChangeSearchTermEvent({required final String searchTerm}) =
      _$_ChangeSearchTermEvent;

  String get searchTerm;
  @JsonKey(ignore: true)
  _$$_ChangeSearchTermEventCopyWith<_$_ChangeSearchTermEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReplaceHolidayEventCopyWith<$Res> {
  factory _$$_ReplaceHolidayEventCopyWith(_$_ReplaceHolidayEvent value,
          $Res Function(_$_ReplaceHolidayEvent) then) =
      __$$_ReplaceHolidayEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, HolidayRequest holiday});

  $HolidayRequestCopyWith<$Res> get holiday;
}

/// @nodoc
class __$$_ReplaceHolidayEventCopyWithImpl<$Res>
    extends _$AdminHolidayRequestsListEventCopyWithImpl<$Res,
        _$_ReplaceHolidayEvent>
    implements _$$_ReplaceHolidayEventCopyWith<$Res> {
  __$$_ReplaceHolidayEventCopyWithImpl(_$_ReplaceHolidayEvent _value,
      $Res Function(_$_ReplaceHolidayEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? holiday = null,
  }) {
    return _then(_$_ReplaceHolidayEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_ReplaceHolidayEvent implements _ReplaceHolidayEvent {
  const _$_ReplaceHolidayEvent({required this.id, required this.holiday});

  @override
  final String id;
  @override
  final HolidayRequest holiday;

  @override
  String toString() {
    return 'AdminHolidayRequestsListEvent.replaceHoliday(id: $id, holiday: $holiday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplaceHolidayEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.holiday, holiday) || other.holiday == holiday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, holiday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplaceHolidayEventCopyWith<_$_ReplaceHolidayEvent> get copyWith =>
      __$$_ReplaceHolidayEventCopyWithImpl<_$_ReplaceHolidayEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int elementsPerPage, String? employeeId)
        fetchData,
    required TResult Function(String searchTerm) changeSearchTerm,
    required TResult Function(String id, HolidayRequest holiday) replaceHoliday,
  }) {
    return replaceHoliday(id, holiday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int elementsPerPage, String? employeeId)?
        fetchData,
    TResult? Function(String searchTerm)? changeSearchTerm,
    TResult? Function(String id, HolidayRequest holiday)? replaceHoliday,
  }) {
    return replaceHoliday?.call(id, holiday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int elementsPerPage, String? employeeId)?
        fetchData,
    TResult Function(String searchTerm)? changeSearchTerm,
    TResult Function(String id, HolidayRequest holiday)? replaceHoliday,
    required TResult orElse(),
  }) {
    if (replaceHoliday != null) {
      return replaceHoliday(id, holiday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
    required TResult Function(_ChangeSearchTermEvent value) changeSearchTerm,
    required TResult Function(_ReplaceHolidayEvent value) replaceHoliday,
  }) {
    return replaceHoliday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
    TResult? Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult? Function(_ReplaceHolidayEvent value)? replaceHoliday,
  }) {
    return replaceHoliday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    TResult Function(_ChangeSearchTermEvent value)? changeSearchTerm,
    TResult Function(_ReplaceHolidayEvent value)? replaceHoliday,
    required TResult orElse(),
  }) {
    if (replaceHoliday != null) {
      return replaceHoliday(this);
    }
    return orElse();
  }
}

abstract class _ReplaceHolidayEvent implements AdminHolidayRequestsListEvent {
  const factory _ReplaceHolidayEvent(
      {required final String id,
      required final HolidayRequest holiday}) = _$_ReplaceHolidayEvent;

  String get id;
  HolidayRequest get holiday;
  @JsonKey(ignore: true)
  _$$_ReplaceHolidayEventCopyWith<_$_ReplaceHolidayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminHolidayRequestsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TableData<List<HolidayRequest>> tableData, String searchTerm)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TableData<List<HolidayRequest>> tableData, String searchTerm)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TableData<List<HolidayRequest>> tableData, String searchTerm)?
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
abstract class $AdminHolidayRequestsListStateCopyWith<$Res> {
  factory $AdminHolidayRequestsListStateCopyWith(
          AdminHolidayRequestsListState value,
          $Res Function(AdminHolidayRequestsListState) then) =
      _$AdminHolidayRequestsListStateCopyWithImpl<$Res,
          AdminHolidayRequestsListState>;
}

/// @nodoc
class _$AdminHolidayRequestsListStateCopyWithImpl<$Res,
        $Val extends AdminHolidayRequestsListState>
    implements $AdminHolidayRequestsListStateCopyWith<$Res> {
  _$AdminHolidayRequestsListStateCopyWithImpl(this._value, this._then);

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
    extends _$AdminHolidayRequestsListStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'AdminHolidayRequestsListState.initial()';
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
            TableData<List<HolidayRequest>> tableData, String searchTerm)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TableData<List<HolidayRequest>> tableData, String searchTerm)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TableData<List<HolidayRequest>> tableData, String searchTerm)?
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

abstract class _InitialState extends AdminHolidayRequestsListState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({TableData<List<HolidayRequest>> tableData, String searchTerm});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$AdminHolidayRequestsListStateCopyWithImpl<$Res, _$_LoadedState>
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
              as TableData<List<HolidayRequest>>,
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
  final TableData<List<HolidayRequest>> tableData;
  @override
  final String searchTerm;

  @override
  String toString() {
    return 'AdminHolidayRequestsListState.loaded(tableData: $tableData, searchTerm: $searchTerm)';
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
            TableData<List<HolidayRequest>> tableData, String searchTerm)
        loaded,
  }) {
    return loaded(tableData, searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TableData<List<HolidayRequest>> tableData, String searchTerm)?
        loaded,
  }) {
    return loaded?.call(tableData, searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TableData<List<HolidayRequest>> tableData, String searchTerm)?
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

abstract class _LoadedState extends AdminHolidayRequestsListState {
  const factory _LoadedState(
      {required final TableData<List<HolidayRequest>> tableData,
      required final String searchTerm}) = _$_LoadedState;
  const _LoadedState._() : super._();

  TableData<List<HolidayRequest>> get tableData;
  String get searchTerm;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
