import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';

@freezed
abstract class Account with _$Account {
  const factory Account({
    required String imageUrl,
    required String name,
    required String accountNumber,
    required bool isInative,
    required String stateOrProvince,
  }) = _Account;
}
