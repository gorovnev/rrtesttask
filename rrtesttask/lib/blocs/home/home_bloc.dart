import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:rrtesttask/domain/account.dart';
import 'package:rrtesttask/domain/account_repository.dart';
import 'package:rrtesttask/domain/data_failure.dart';
import 'package:async/async.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IAccountRepository _accountRepository;

  HomeBloc(this._accountRepository) : super(HomeState.initial()) {
    on<StartedEvent>(_onStartedEvent);
    on<SearchEvent>(_onSearchEvent);
    on<SwitchView>(_onSwitchViewEvent);
    on<FilterByState>(_onFilterByStateEvent);
    on<FilterByStateOrProvince>(_onFilterByStateOrProvinceEvent);
    on<ClearFilter>(_onClearFilterEvent);
  }

  void _onStartedEvent(StartedEvent event, Emitter<HomeState> emit) async {
    await _getAccounts("", emit);
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

    List<String> statesFilter = [];
    List<String> provincesFilter = [];
    res.fold(
      (_) => null,
      (list) {
        for (var item in list) {
          if (!statesFilter.contains(item.stateCode)) {
            statesFilter.add(item.stateCode);
          }
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
      statesForFilter: statesFilter,
      filterState: null,
      filterStateOrProvince: null,
      filtered: false,
      statesOrProcincesForFilter: provincesFilter,
      isLoading: false,
    ));
  }

  void _onFilterByStateEvent(
      FilterByState event, Emitter<HomeState> emit) async {
    final Either<DataFailure, List<Account>> res = state.accountResult.fold(
      (err) => left(err),
      (list) => right(
          list.where((element) => element.stateCode == event.state).toList()),
    );
    emit(state.copyWith(
      filteredResult: res,
      filtered: true,
      filterStateOrProvince: null,
      filterState: event.state,
    ));
  }

  void _onFilterByStateOrProvinceEvent(
      FilterByStateOrProvince event, Emitter<HomeState> emit) async {
    final Either<DataFailure, List<Account>> res = state.accountResult.fold(
      (err) => left(err),
      (list) => right(list
          .where((element) => element.stateOrProvince == event.stateOrProvince)
          .toList()),
    );
    emit(state.copyWith(
      filteredResult: res,
      filtered: true,
      filterState: null,
      filterStateOrProvince: event.stateOrProvince,
    ));
  }

  void _onClearFilterEvent(ClearFilter event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      filtered: false,
      filterState: null,
      filterStateOrProvince: null,
      filteredResult: state.accountResult,
    ));
  }
}
