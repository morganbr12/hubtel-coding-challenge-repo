part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.selectedType = SelectedType.history,
    this.appStatus = const InitialAppStatus(),
  });

  final SelectedType selectedType;
  final AppStatus appStatus;

  HomeState copyWith({
    SelectedType? selectedType,
    AppStatus? appStatus,
  }) {
    return HomeState(
      selectedType: selectedType ?? this.selectedType,
      appStatus: appStatus ?? this.appStatus,
    );
  }

  @override
  List<Object> get props => [selectedType, appStatus];
}
