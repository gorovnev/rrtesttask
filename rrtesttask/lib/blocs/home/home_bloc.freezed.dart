// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  StartedEvent started() {
    return const StartedEvent();
  }

  SearchEvent search(String accountOrName) {
    return SearchEvent(
      accountOrName,
    );
  }

  SwitchView switchView(bool view) {
    return SwitchView(
      view,
    );
  }

  FilterByStatus filterByStatus(bool? active) {
    return FilterByStatus(
      active,
    );
  }

  FilterByStateOrProvince filterByStateOrProvince(String stateOrProvince) {
    return FilterByStateOrProvince(
      stateOrProvince,
    );
  }

  ClearFilter clearFilter() {
    return const ClearFilter();
  }

  Authenticate authenticate() {
    return const Authenticate();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String accountOrName) search,
    required TResult Function(bool view) switchView,
    required TResult Function(bool? active) filterByStatus,
    required TResult Function(String stateOrProvince) filterByStateOrProvince,
    required TResult Function() clearFilter,
    required TResult Function() authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(SearchEvent value) search,
    required TResult Function(SwitchView value) switchView,
    required TResult Function(FilterByStatus value) filterByStatus,
    required TResult Function(FilterByStateOrProvince value)
        filterByStateOrProvince,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(Authenticate value) authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $StartedEventCopyWith<$Res> {
  factory $StartedEventCopyWith(
          StartedEvent value, $Res Function(StartedEvent) then) =
      _$StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $StartedEventCopyWith<$Res> {
  _$StartedEventCopyWithImpl(
      StartedEvent _value, $Res Function(StartedEvent) _then)
      : super(_value, (v) => _then(v as StartedEvent));

  @override
  StartedEvent get _value => super._value as StartedEvent;
}

/// @nodoc

class _$StartedEvent implements StartedEvent {
  const _$StartedEvent();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String accountOrName) search,
    required TResult Function(bool view) switchView,
    required TResult Function(bool? active) filterByStatus,
    required TResult Function(String stateOrProvince) filterByStateOrProvince,
    required TResult Function() clearFilter,
    required TResult Function() authenticate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(SearchEvent value) search,
    required TResult Function(SwitchView value) switchView,
    required TResult Function(FilterByStatus value) filterByStatus,
    required TResult Function(FilterByStateOrProvince value)
        filterByStateOrProvince,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class StartedEvent implements HomeEvent {
  const factory StartedEvent() = _$StartedEvent;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({String accountOrName});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(
      SearchEvent _value, $Res Function(SearchEvent) _then)
      : super(_value, (v) => _then(v as SearchEvent));

  @override
  SearchEvent get _value => super._value as SearchEvent;

  @override
  $Res call({
    Object? accountOrName = freezed,
  }) {
    return _then(SearchEvent(
      accountOrName == freezed
          ? _value.accountOrName
          : accountOrName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEvent implements SearchEvent {
  const _$SearchEvent(this.accountOrName);

  @override
  final String accountOrName;

  @override
  String toString() {
    return 'HomeEvent.search(accountOrName: $accountOrName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchEvent &&
            (identical(other.accountOrName, accountOrName) ||
                other.accountOrName == accountOrName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountOrName);

  @JsonKey(ignore: true)
  @override
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      _$SearchEventCopyWithImpl<SearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String accountOrName) search,
    required TResult Function(bool view) switchView,
    required TResult Function(bool? active) filterByStatus,
    required TResult Function(String stateOrProvince) filterByStateOrProvince,
    required TResult Function() clearFilter,
    required TResult Function() authenticate,
  }) {
    return search(accountOrName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
  }) {
    return search?.call(accountOrName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(accountOrName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(SearchEvent value) search,
    required TResult Function(SwitchView value) switchView,
    required TResult Function(FilterByStatus value) filterByStatus,
    required TResult Function(FilterByStateOrProvince value)
        filterByStateOrProvince,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchEvent implements HomeEvent {
  const factory SearchEvent(String accountOrName) = _$SearchEvent;

  String get accountOrName;
  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchViewCopyWith<$Res> {
  factory $SwitchViewCopyWith(
          SwitchView value, $Res Function(SwitchView) then) =
      _$SwitchViewCopyWithImpl<$Res>;
  $Res call({bool view});
}

/// @nodoc
class _$SwitchViewCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $SwitchViewCopyWith<$Res> {
  _$SwitchViewCopyWithImpl(SwitchView _value, $Res Function(SwitchView) _then)
      : super(_value, (v) => _then(v as SwitchView));

  @override
  SwitchView get _value => super._value as SwitchView;

  @override
  $Res call({
    Object? view = freezed,
  }) {
    return _then(SwitchView(
      view == freezed
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SwitchView implements SwitchView {
  const _$SwitchView(this.view);

  @override
  final bool view;

  @override
  String toString() {
    return 'HomeEvent.switchView(view: $view)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SwitchView &&
            (identical(other.view, view) || other.view == view));
  }

  @override
  int get hashCode => Object.hash(runtimeType, view);

  @JsonKey(ignore: true)
  @override
  $SwitchViewCopyWith<SwitchView> get copyWith =>
      _$SwitchViewCopyWithImpl<SwitchView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String accountOrName) search,
    required TResult Function(bool view) switchView,
    required TResult Function(bool? active) filterByStatus,
    required TResult Function(String stateOrProvince) filterByStateOrProvince,
    required TResult Function() clearFilter,
    required TResult Function() authenticate,
  }) {
    return switchView(view);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
  }) {
    return switchView?.call(view);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (switchView != null) {
      return switchView(view);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(SearchEvent value) search,
    required TResult Function(SwitchView value) switchView,
    required TResult Function(FilterByStatus value) filterByStatus,
    required TResult Function(FilterByStateOrProvince value)
        filterByStateOrProvince,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return switchView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return switchView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (switchView != null) {
      return switchView(this);
    }
    return orElse();
  }
}

abstract class SwitchView implements HomeEvent {
  const factory SwitchView(bool view) = _$SwitchView;

  bool get view;
  @JsonKey(ignore: true)
  $SwitchViewCopyWith<SwitchView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByStatusCopyWith<$Res> {
  factory $FilterByStatusCopyWith(
          FilterByStatus value, $Res Function(FilterByStatus) then) =
      _$FilterByStatusCopyWithImpl<$Res>;
  $Res call({bool? active});
}

/// @nodoc
class _$FilterByStatusCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $FilterByStatusCopyWith<$Res> {
  _$FilterByStatusCopyWithImpl(
      FilterByStatus _value, $Res Function(FilterByStatus) _then)
      : super(_value, (v) => _then(v as FilterByStatus));

  @override
  FilterByStatus get _value => super._value as FilterByStatus;

  @override
  $Res call({
    Object? active = freezed,
  }) {
    return _then(FilterByStatus(
      active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$FilterByStatus implements FilterByStatus {
  const _$FilterByStatus(this.active);

  @override
  final bool? active;

  @override
  String toString() {
    return 'HomeEvent.filterByStatus(active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterByStatus &&
            (identical(other.active, active) || other.active == active));
  }

  @override
  int get hashCode => Object.hash(runtimeType, active);

  @JsonKey(ignore: true)
  @override
  $FilterByStatusCopyWith<FilterByStatus> get copyWith =>
      _$FilterByStatusCopyWithImpl<FilterByStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String accountOrName) search,
    required TResult Function(bool view) switchView,
    required TResult Function(bool? active) filterByStatus,
    required TResult Function(String stateOrProvince) filterByStateOrProvince,
    required TResult Function() clearFilter,
    required TResult Function() authenticate,
  }) {
    return filterByStatus(active);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
  }) {
    return filterByStatus?.call(active);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (filterByStatus != null) {
      return filterByStatus(active);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(SearchEvent value) search,
    required TResult Function(SwitchView value) switchView,
    required TResult Function(FilterByStatus value) filterByStatus,
    required TResult Function(FilterByStateOrProvince value)
        filterByStateOrProvince,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return filterByStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return filterByStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (filterByStatus != null) {
      return filterByStatus(this);
    }
    return orElse();
  }
}

abstract class FilterByStatus implements HomeEvent {
  const factory FilterByStatus(bool? active) = _$FilterByStatus;

  bool? get active;
  @JsonKey(ignore: true)
  $FilterByStatusCopyWith<FilterByStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByStateOrProvinceCopyWith<$Res> {
  factory $FilterByStateOrProvinceCopyWith(FilterByStateOrProvince value,
          $Res Function(FilterByStateOrProvince) then) =
      _$FilterByStateOrProvinceCopyWithImpl<$Res>;
  $Res call({String stateOrProvince});
}

/// @nodoc
class _$FilterByStateOrProvinceCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $FilterByStateOrProvinceCopyWith<$Res> {
  _$FilterByStateOrProvinceCopyWithImpl(FilterByStateOrProvince _value,
      $Res Function(FilterByStateOrProvince) _then)
      : super(_value, (v) => _then(v as FilterByStateOrProvince));

  @override
  FilterByStateOrProvince get _value => super._value as FilterByStateOrProvince;

  @override
  $Res call({
    Object? stateOrProvince = freezed,
  }) {
    return _then(FilterByStateOrProvince(
      stateOrProvince == freezed
          ? _value.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterByStateOrProvince implements FilterByStateOrProvince {
  const _$FilterByStateOrProvince(this.stateOrProvince);

  @override
  final String stateOrProvince;

  @override
  String toString() {
    return 'HomeEvent.filterByStateOrProvince(stateOrProvince: $stateOrProvince)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterByStateOrProvince &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                other.stateOrProvince == stateOrProvince));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateOrProvince);

  @JsonKey(ignore: true)
  @override
  $FilterByStateOrProvinceCopyWith<FilterByStateOrProvince> get copyWith =>
      _$FilterByStateOrProvinceCopyWithImpl<FilterByStateOrProvince>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String accountOrName) search,
    required TResult Function(bool view) switchView,
    required TResult Function(bool? active) filterByStatus,
    required TResult Function(String stateOrProvince) filterByStateOrProvince,
    required TResult Function() clearFilter,
    required TResult Function() authenticate,
  }) {
    return filterByStateOrProvince(stateOrProvince);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
  }) {
    return filterByStateOrProvince?.call(stateOrProvince);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (filterByStateOrProvince != null) {
      return filterByStateOrProvince(stateOrProvince);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(SearchEvent value) search,
    required TResult Function(SwitchView value) switchView,
    required TResult Function(FilterByStatus value) filterByStatus,
    required TResult Function(FilterByStateOrProvince value)
        filterByStateOrProvince,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return filterByStateOrProvince(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return filterByStateOrProvince?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (filterByStateOrProvince != null) {
      return filterByStateOrProvince(this);
    }
    return orElse();
  }
}

abstract class FilterByStateOrProvince implements HomeEvent {
  const factory FilterByStateOrProvince(String stateOrProvince) =
      _$FilterByStateOrProvince;

  String get stateOrProvince;
  @JsonKey(ignore: true)
  $FilterByStateOrProvinceCopyWith<FilterByStateOrProvince> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearFilterCopyWith<$Res> {
  factory $ClearFilterCopyWith(
          ClearFilter value, $Res Function(ClearFilter) then) =
      _$ClearFilterCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearFilterCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $ClearFilterCopyWith<$Res> {
  _$ClearFilterCopyWithImpl(
      ClearFilter _value, $Res Function(ClearFilter) _then)
      : super(_value, (v) => _then(v as ClearFilter));

  @override
  ClearFilter get _value => super._value as ClearFilter;
}

/// @nodoc

class _$ClearFilter implements ClearFilter {
  const _$ClearFilter();

  @override
  String toString() {
    return 'HomeEvent.clearFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String accountOrName) search,
    required TResult Function(bool view) switchView,
    required TResult Function(bool? active) filterByStatus,
    required TResult Function(String stateOrProvince) filterByStateOrProvince,
    required TResult Function() clearFilter,
    required TResult Function() authenticate,
  }) {
    return clearFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
  }) {
    return clearFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(SearchEvent value) search,
    required TResult Function(SwitchView value) switchView,
    required TResult Function(FilterByStatus value) filterByStatus,
    required TResult Function(FilterByStateOrProvince value)
        filterByStateOrProvince,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return clearFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return clearFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter(this);
    }
    return orElse();
  }
}

abstract class ClearFilter implements HomeEvent {
  const factory ClearFilter() = _$ClearFilter;
}

/// @nodoc
abstract class $AuthenticateCopyWith<$Res> {
  factory $AuthenticateCopyWith(
          Authenticate value, $Res Function(Authenticate) then) =
      _$AuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticateCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $AuthenticateCopyWith<$Res> {
  _$AuthenticateCopyWithImpl(
      Authenticate _value, $Res Function(Authenticate) _then)
      : super(_value, (v) => _then(v as Authenticate));

  @override
  Authenticate get _value => super._value as Authenticate;
}

/// @nodoc

class _$Authenticate implements Authenticate {
  const _$Authenticate();

  @override
  String toString() {
    return 'HomeEvent.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Authenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String accountOrName) search,
    required TResult Function(bool view) switchView,
    required TResult Function(bool? active) filterByStatus,
    required TResult Function(String stateOrProvince) filterByStateOrProvince,
    required TResult Function() clearFilter,
    required TResult Function() authenticate,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String accountOrName)? search,
    TResult Function(bool view)? switchView,
    TResult Function(bool? active)? filterByStatus,
    TResult Function(String stateOrProvince)? filterByStateOrProvince,
    TResult Function()? clearFilter,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(SearchEvent value) search,
    required TResult Function(SwitchView value) switchView,
    required TResult Function(FilterByStatus value) filterByStatus,
    required TResult Function(FilterByStateOrProvince value)
        filterByStateOrProvince,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(SearchEvent value)? search,
    TResult Function(SwitchView value)? switchView,
    TResult Function(FilterByStatus value)? filterByStatus,
    TResult Function(FilterByStateOrProvince value)? filterByStateOrProvince,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class Authenticate implements HomeEvent {
  const factory Authenticate() = _$Authenticate;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {required bool isLoading,
      required bool isAuthenticated,
      required bool filtered,
      required bool listView,
      required String nameOrAccount,
      required AccountFilter? filter,
      required List<String> statesOrProcincesForFilter,
      required Either<DataFailure, List<Account>> accountResult,
      required Either<DataFailure, List<Account>> filteredResult}) {
    return _HomeState(
      isLoading: isLoading,
      isAuthenticated: isAuthenticated,
      filtered: filtered,
      listView: listView,
      nameOrAccount: nameOrAccount,
      filter: filter,
      statesOrProcincesForFilter: statesOrProcincesForFilter,
      accountResult: accountResult,
      filteredResult: filteredResult,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get filtered => throw _privateConstructorUsedError;
  bool get listView => throw _privateConstructorUsedError;
  String get nameOrAccount => throw _privateConstructorUsedError;
  AccountFilter? get filter => throw _privateConstructorUsedError;
  List<String> get statesOrProcincesForFilter =>
      throw _privateConstructorUsedError;
  Either<DataFailure, List<Account>> get accountResult =>
      throw _privateConstructorUsedError;
  Either<DataFailure, List<Account>> get filteredResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isAuthenticated,
      bool filtered,
      bool listView,
      String nameOrAccount,
      AccountFilter? filter,
      List<String> statesOrProcincesForFilter,
      Either<DataFailure, List<Account>> accountResult,
      Either<DataFailure, List<Account>> filteredResult});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isAuthenticated = freezed,
    Object? filtered = freezed,
    Object? listView = freezed,
    Object? nameOrAccount = freezed,
    Object? filter = freezed,
    Object? statesOrProcincesForFilter = freezed,
    Object? accountResult = freezed,
    Object? filteredResult = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      filtered: filtered == freezed
          ? _value.filtered
          : filtered // ignore: cast_nullable_to_non_nullable
              as bool,
      listView: listView == freezed
          ? _value.listView
          : listView // ignore: cast_nullable_to_non_nullable
              as bool,
      nameOrAccount: nameOrAccount == freezed
          ? _value.nameOrAccount
          : nameOrAccount // ignore: cast_nullable_to_non_nullable
              as String,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as AccountFilter?,
      statesOrProcincesForFilter: statesOrProcincesForFilter == freezed
          ? _value.statesOrProcincesForFilter
          : statesOrProcincesForFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accountResult: accountResult == freezed
          ? _value.accountResult
          : accountResult // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Account>>,
      filteredResult: filteredResult == freezed
          ? _value.filteredResult
          : filteredResult // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Account>>,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isAuthenticated,
      bool filtered,
      bool listView,
      String nameOrAccount,
      AccountFilter? filter,
      List<String> statesOrProcincesForFilter,
      Either<DataFailure, List<Account>> accountResult,
      Either<DataFailure, List<Account>> filteredResult});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isAuthenticated = freezed,
    Object? filtered = freezed,
    Object? listView = freezed,
    Object? nameOrAccount = freezed,
    Object? filter = freezed,
    Object? statesOrProcincesForFilter = freezed,
    Object? accountResult = freezed,
    Object? filteredResult = freezed,
  }) {
    return _then(_HomeState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      filtered: filtered == freezed
          ? _value.filtered
          : filtered // ignore: cast_nullable_to_non_nullable
              as bool,
      listView: listView == freezed
          ? _value.listView
          : listView // ignore: cast_nullable_to_non_nullable
              as bool,
      nameOrAccount: nameOrAccount == freezed
          ? _value.nameOrAccount
          : nameOrAccount // ignore: cast_nullable_to_non_nullable
              as String,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as AccountFilter?,
      statesOrProcincesForFilter: statesOrProcincesForFilter == freezed
          ? _value.statesOrProcincesForFilter
          : statesOrProcincesForFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accountResult: accountResult == freezed
          ? _value.accountResult
          : accountResult // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Account>>,
      filteredResult: filteredResult == freezed
          ? _value.filteredResult
          : filteredResult // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Account>>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isLoading,
      required this.isAuthenticated,
      required this.filtered,
      required this.listView,
      required this.nameOrAccount,
      required this.filter,
      required this.statesOrProcincesForFilter,
      required this.accountResult,
      required this.filteredResult});

  @override
  final bool isLoading;
  @override
  final bool isAuthenticated;
  @override
  final bool filtered;
  @override
  final bool listView;
  @override
  final String nameOrAccount;
  @override
  final AccountFilter? filter;
  @override
  final List<String> statesOrProcincesForFilter;
  @override
  final Either<DataFailure, List<Account>> accountResult;
  @override
  final Either<DataFailure, List<Account>> filteredResult;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, isAuthenticated: $isAuthenticated, filtered: $filtered, listView: $listView, nameOrAccount: $nameOrAccount, filter: $filter, statesOrProcincesForFilter: $statesOrProcincesForFilter, accountResult: $accountResult, filteredResult: $filteredResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.filtered, filtered) ||
                other.filtered == filtered) &&
            (identical(other.listView, listView) ||
                other.listView == listView) &&
            (identical(other.nameOrAccount, nameOrAccount) ||
                other.nameOrAccount == nameOrAccount) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality().equals(
                other.statesOrProcincesForFilter, statesOrProcincesForFilter) &&
            (identical(other.accountResult, accountResult) ||
                other.accountResult == accountResult) &&
            (identical(other.filteredResult, filteredResult) ||
                other.filteredResult == filteredResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isAuthenticated,
      filtered,
      listView,
      nameOrAccount,
      filter,
      const DeepCollectionEquality().hash(statesOrProcincesForFilter),
      accountResult,
      filteredResult);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
          {required bool isLoading,
          required bool isAuthenticated,
          required bool filtered,
          required bool listView,
          required String nameOrAccount,
          required AccountFilter? filter,
          required List<String> statesOrProcincesForFilter,
          required Either<DataFailure, List<Account>> accountResult,
          required Either<DataFailure, List<Account>> filteredResult}) =
      _$_HomeState;

  @override
  bool get isLoading;
  @override
  bool get isAuthenticated;
  @override
  bool get filtered;
  @override
  bool get listView;
  @override
  String get nameOrAccount;
  @override
  AccountFilter? get filter;
  @override
  List<String> get statesOrProcincesForFilter;
  @override
  Either<DataFailure, List<Account>> get accountResult;
  @override
  Either<DataFailure, List<Account>> get filteredResult;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
