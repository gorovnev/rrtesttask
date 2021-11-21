part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = StartedEvent;
  const factory HomeEvent.search(String accountOrName) = SearchEvent;
  const factory HomeEvent.switchView(bool view) = SwitchView;
  const factory HomeEvent.filterByStatus(bool? active) = FilterByStatus;
  const factory HomeEvent.filterByStateOrProvince(String stateOrProvince) =
      FilterByStateOrProvince;
  const factory HomeEvent.clearFilter() = ClearFilter;
  const factory HomeEvent.authenticate() = Authenticate;
}
