// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountTearOff {
  const _$AccountTearOff();

  _Account call(
      {required String imageUrl,
      required String name,
      required String accountNumber,
      required bool isInative,
      required String stateOrProvince}) {
    return _Account(
      imageUrl: imageUrl,
      name: name,
      accountNumber: accountNumber,
      isInative: isInative,
      stateOrProvince: stateOrProvince,
    );
  }
}

/// @nodoc
const $Account = _$AccountTearOff();

/// @nodoc
mixin _$Account {
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  bool get isInative => throw _privateConstructorUsedError;
  String get stateOrProvince => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call(
      {String imageUrl,
      String name,
      String accountNumber,
      bool isInative,
      String stateOrProvince});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? accountNumber = freezed,
    Object? isInative = freezed,
    Object? stateOrProvince = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isInative: isInative == freezed
          ? _value.isInative
          : isInative // ignore: cast_nullable_to_non_nullable
              as bool,
      stateOrProvince: stateOrProvince == freezed
          ? _value.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imageUrl,
      String name,
      String accountNumber,
      bool isInative,
      String stateOrProvince});
}

/// @nodoc
class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? accountNumber = freezed,
    Object? isInative = freezed,
    Object? stateOrProvince = freezed,
  }) {
    return _then(_Account(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isInative: isInative == freezed
          ? _value.isInative
          : isInative // ignore: cast_nullable_to_non_nullable
              as bool,
      stateOrProvince: stateOrProvince == freezed
          ? _value.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Account implements _Account {
  const _$_Account(
      {required this.imageUrl,
      required this.name,
      required this.accountNumber,
      required this.isInative,
      required this.stateOrProvince});

  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final String accountNumber;
  @override
  final bool isInative;
  @override
  final String stateOrProvince;

  @override
  String toString() {
    return 'Account(imageUrl: $imageUrl, name: $name, accountNumber: $accountNumber, isInative: $isInative, stateOrProvince: $stateOrProvince)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Account &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.isInative, isInative) ||
                other.isInative == isInative) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                other.stateOrProvince == stateOrProvince));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, imageUrl, name, accountNumber, isInative, stateOrProvince);

  @JsonKey(ignore: true)
  @override
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);
}

abstract class _Account implements Account {
  const factory _Account(
      {required String imageUrl,
      required String name,
      required String accountNumber,
      required bool isInative,
      required String stateOrProvince}) = _$_Account;

  @override
  String get imageUrl;
  @override
  String get name;
  @override
  String get accountNumber;
  @override
  bool get isInative;
  @override
  String get stateOrProvince;
  @override
  @JsonKey(ignore: true)
  _$AccountCopyWith<_Account> get copyWith =>
      throw _privateConstructorUsedError;
}
