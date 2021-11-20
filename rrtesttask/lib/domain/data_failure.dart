import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'data_failure.freezed.dart';

@freezed
abstract class DataFailure with _$DataFailure {
  const factory DataFailure.noError() = NoError;
  const factory DataFailure.noData() = NoData;
  const factory DataFailure.cancelled() = Cancelled;
}

extension DataFailureExt on DataFailure {
  String getMessage() {
    return maybeMap(
      noData: (_) => "No data available!",
      orElse: () => "An error",
    );
  }
}
