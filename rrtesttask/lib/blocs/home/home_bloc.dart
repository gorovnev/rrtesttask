import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:rrtesttask/domain/account.dart';
import 'package:rrtesttask/domain/account_repository.dart';
import 'package:rrtesttask/domain/auth_facade.dart';
import 'package:rrtesttask/domain/data_failure.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class AccountFilter {
  bool? active;
  String? stateOrProvince;
}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IAccountRepository _accountRepository;
  final IAuthFacade _auth;

  HomeBloc(this._accountRepository, this._auth) : super(HomeState.initial()) {
    on<StartedEvent>(_onStartedEvent);
    on<SearchEvent>(_onSearchEvent);
    on<SwitchView>(_onSwitchViewEvent);
    on<FilterByStatus>(_onFilterByStatusEvent);
    on<FilterByStateOrProvince>(_onFilterByStateOrProvinceEvent);
    on<ClearFilter>(_onClearFilterEvent);
    on<Authenticate>(_onAuthenticateEvent);
  }

  void _onStartedEvent(StartedEvent event, Emitter<HomeState> emit) async {
    // await _getAccounts("", emit);
  }

  void _onSearchEvent(SearchEvent event, Emitter<HomeState> emit) async {
    await _getAccounts(event.accountOrName, emit);
  }

  void _onSwitchViewEvent(SwitchView event, Emitter<HomeState> emit) async {
    emit(state.copyWith(listView: event.view));
  }

  Future<void> _getAccounts(String pattern, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    final res = pattern == ""
        ? await _accountRepository.getAll()
        : await _accountRepository.searchByAccountOrName(pattern);

    List<String> provincesFilter = [];
    res.fold(
      (_) => null,
      (list) {
        for (var item in list) {
          if (!provincesFilter.contains(item.stateOrProvince)) {
            provincesFilter.add(item.stateOrProvince);
          }
        }
      },
    );

    emit(state.copyWith(
      nameOrAccount: pattern,
      accountResult: res,
      filteredResult: res,
      filter: null,
      filtered: false,
      statesOrProcincesForFilter: provincesFilter,
      isLoading: false,
    ));
  }

  Either<DataFailure, List<Account>> _filterFunction(
    Either<DataFailure, List<Account>> accountResult,
    AccountFilter filter,
  ) {
    return accountResult.fold(
      (err) => left(err),
      (list) {
        final list1 = filter.active == null
            ? list
            : list
                .where((element) => element.isInative == filter.active)
                .toList();
        final list2 = filter.stateOrProvince == null
            ? list1
            : list1
                .where((element) =>
                    element.stateOrProvince == filter.stateOrProvince)
                .toList();
        return right(list2);
      },
    );
  }

  void _onFilterByStatusEvent(
      FilterByStatus event, Emitter<HomeState> emit) async {
    AccountFilter? filter = state.filter;
    filter ??= AccountFilter();
    filter.active = event.active;

    final Either<DataFailure, List<Account>> res =
        _filterFunction(state.accountResult, filter);

    emit(state.copyWith(
      filteredResult: res,
      filtered: true,
      filter: filter,
    ));
  }

  void _onFilterByStateOrProvinceEvent(
      FilterByStateOrProvince event, Emitter<HomeState> emit) async {
    AccountFilter? filter = state.filter;
    filter ??= AccountFilter();
    filter.stateOrProvince = event.stateOrProvince;

    final Either<DataFailure, List<Account>> res =
        _filterFunction(state.accountResult, filter);

    emit(state.copyWith(
      filteredResult: res,
      filtered: true,
      filter: filter,
    ));
  }

  void _onClearFilterEvent(ClearFilter event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      filtered: false,
      filter: null,
      filteredResult: state.accountResult,
    ));
  }

  void _onAuthenticateEvent(Authenticate event, Emitter<HomeState> emit) async {
    await _auth.login();
    emit(state.copyWith(
      isAuthenticated: _auth.isLoggedIn,
    ));
  }
}
