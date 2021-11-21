part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isAuthenticated,
    required bool filtered,
    required bool listView,
    required String nameOrAccount,
    required AccountFilter? filter,
    required List<String> statesOrProcincesForFilter,
    required Either<DataFailure, List<Account>> accountResult,
    required Either<DataFailure, List<Account>> filteredResult,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        isLoading: false,
        filtered: false,
        isAuthenticated: false,
        listView: true,
        nameOrAccount: "",
        filter: null,
        statesOrProcincesForFilter: [],
        accountResult: left(const DataFailure.noData()),
        filteredResult: left(const DataFailure.noData()),
      );
}
