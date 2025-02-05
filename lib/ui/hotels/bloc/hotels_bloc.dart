import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_guide/domain/entity/data.dart';

import '../../../domain/use_case/get_hotels_use_case.dart';
import '../../../utils/result.dart';
import 'hotels_event.dart';
import 'hotels_state.dart';

class HotelsBloc extends Bloc<HotelsEvent, HotelsState> {
  final GetHotelsUseCase getHotelsUseCase;

  HotelsBloc(this.getHotelsUseCase) : super(HotelsInitial()) {
    on<FetchHotelsEvent>(_onFetchHotels);
  }

  Future<void> _onFetchHotels(
    FetchHotelsEvent event,
    Emitter<HotelsState> emit,
  ) async {
    emit(HotelsLoading());

    final result = await getHotelsUseCase();

    switch (result) {
      case Ok<Data>():
        emit(HotelsLoaded(result.value));
      case Error<Data>():
        emit(HotelsError(result.error.toString()));
    }
  }
}
