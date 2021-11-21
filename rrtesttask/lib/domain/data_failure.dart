import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'data_failure.freezed.dart';

@freezed
abstract class DataFailure with _$DataFailure {
  const factory DataFailure.noError() = DataFailureNoError;
  const factory DataFailure.noData() = DataFailureNoData;
  const factory DataFailure.cancelled() = DataFailureCancelled;
  const factory DataFailure.badRequest() = DataFailureBadRequest;
  const factory DataFailure.unauthorized() = DataFailureUnauthorized;
  const factory DataFailure.forbidden() = DataFailureForbidden;
  const factory DataFailure.serverError() = DataFailureServerError;
}

extension DataFailureExt on DataFailure {
  String getMessage() {
    return maybeMap(
      noData: (_) => "Try to search (empty search will return all records)",
      badRequest: (_) => "Something wrong with your search query...",
      unauthorized: (_) => "You should login before fetching the data",
      forbidden: (_) => "You do not have permission",
      serverError: (_) => "Huston, we have a problem...",
      orElse: () => "Unknown error",
    );
  }
}
