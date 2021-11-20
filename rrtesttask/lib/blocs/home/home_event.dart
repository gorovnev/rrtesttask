part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = StartedEvent;
  // const factory HomeEvent.searchChanged(String accountOrName) = SearchChanged;
  const factory HomeEvent.search(String accountOrName) = SearchEvent;
  const factory HomeEvent.searchInLoaded(String accountOrName) = SearchInLoaded;
  const factory HomeEvent.switchView(bool view) = SwitchView;
  const factory HomeEvent.filterByState(String state) = FilterByState;
  const factory HomeEvent.filterByStateOrProvince(String stateOrProvince) =
      FilterByStateOrProvince;
  const factory HomeEvent.clearFilter() = ClearFilter;
}
