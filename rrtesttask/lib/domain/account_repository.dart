import 'package:dartz/dartz.dart';
import 'package:rrtesttask/domain/account.dart';
import 'package:rrtesttask/domain/data_failure.dart';

abstract class IAccountRepository {
  Future<Either<DataFailure, List<Account>>> searchByAccountOrName(
      String accountOrName);
  Future<Either<DataFailure, List<Account>>> getAll();
}
