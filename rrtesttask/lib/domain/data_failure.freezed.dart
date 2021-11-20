// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataFailureTearOff {
  const _$DataFailureTearOff();

  NoError noError() {
    return const NoError();
  }

  NoData noData() {
    return const NoData();
  }

  Cancelled cancelled() {
    return const Cancelled();
  }
}

/// @nodoc
const $DataFailure = _$DataFailureTearOff();

/// @nodoc
mixin _$DataFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() noData,
    required TResult Function() cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? noData,
    TResult Function()? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? noData,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NoData value) noData,
    required TResult Function(Cancelled value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NoData value)? noData,
    TResult Function(Cancelled value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NoData value)? noData,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataFailureCopyWith<$Res> {
  factory $DataFailureCopyWith(
          DataFailure value, $Res Function(DataFailure) then) =
      _$DataFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataFailureCopyWithImpl<$Res> implements $DataFailureCopyWith<$Res> {
  _$DataFailureCopyWithImpl(this._value, this._then);

  final DataFailure _value;
  // ignore: unused_field
  final $Res Function(DataFailure) _then;
}

/// @nodoc
abstract class $NoErrorCopyWith<$Res> {
  factory $NoErrorCopyWith(NoError value, $Res Function(NoError) then) =
      _$NoErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoErrorCopyWithImpl<$Res> extends _$DataFailureCopyWithImpl<$Res>
    implements $NoErrorCopyWith<$Res> {
  _$NoErrorCopyWithImpl(NoError _value, $Res Function(NoError) _then)
      : super(_value, (v) => _then(v as NoError));

  @override
  NoError get _value => super._value as NoError;
}

/// @nodoc

class _$NoError implements NoError {
  const _$NoError();

  @override
  String toString() {
    return 'DataFailure.noError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() noData,
    required TResult Function() cancelled,
  }) {
    return noError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? noData,
    TResult Function()? cancelled,
  }) {
    return noError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? noData,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (noError != null) {
      return noError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NoData value) noData,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return noError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NoData value)? noData,
    TResult Function(Cancelled value)? cancelled,
  }) {
    return noError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NoData value)? noData,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (noError != null) {
      return noError(this);
    }
    return orElse();
  }
}

abstract class NoError implements DataFailure {
  const factory NoError() = _$NoError;
}

/// @nodoc
abstract class $NoDataCopyWith<$Res> {
  factory $NoDataCopyWith(NoData value, $Res Function(NoData) then) =
      _$NoDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoDataCopyWithImpl<$Res> extends _$DataFailureCopyWithImpl<$Res>
    implements $NoDataCopyWith<$Res> {
  _$NoDataCopyWithImpl(NoData _value, $Res Function(NoData) _then)
      : super(_value, (v) => _then(v as NoData));

  @override
  NoData get _value => super._value as NoData;
}

/// @nodoc

class _$NoData implements NoData {
  const _$NoData();

  @override
  String toString() {
    return 'DataFailure.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() noData,
    required TResult Function() cancelled,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? noData,
    TResult Function()? cancelled,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? noData,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NoData value) noData,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NoData value)? noData,
    TResult Function(Cancelled value)? cancelled,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NoData value)? noData,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData implements DataFailure {
  const factory NoData() = _$NoData;
}

/// @nodoc
abstract class $CancelledCopyWith<$Res> {
  factory $CancelledCopyWith(Cancelled value, $Res Function(Cancelled) then) =
      _$CancelledCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledCopyWithImpl<$Res> extends _$DataFailureCopyWithImpl<$Res>
    implements $CancelledCopyWith<$Res> {
  _$CancelledCopyWithImpl(Cancelled _value, $Res Function(Cancelled) _then)
      : super(_value, (v) => _then(v as Cancelled));

  @override
  Cancelled get _value => super._value as Cancelled;
}

/// @nodoc

class _$Cancelled implements Cancelled {
  const _$Cancelled();

  @override
  String toString() {
    return 'DataFailure.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Cancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() noData,
    required TResult Function() cancelled,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? noData,
    TResult Function()? cancelled,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? noData,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NoData value) noData,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NoData value)? noData,
    TResult Function(Cancelled value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NoData value)? noData,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class Cancelled implements DataFailure {
  const factory Cancelled() = _$Cancelled;
}
