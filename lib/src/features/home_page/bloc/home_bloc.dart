import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/shared/app_status/app_status.dart';
import '../data/enum.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<UpdateSelectedType>(_onUpdatedSelectedType);
  }

  void _onUpdatedSelectedType(
      UpdateSelectedType event, Emitter<HomeState> emit) {
    try {
      emit(state.copyWith(
          selectedType: event.selectedType, appStatus: QrStatusUpdated()));
    } finally {
      emit(state.copyWith(appStatus: const InitialAppStatus()));
    }
  }
}
