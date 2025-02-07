import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/domain/entity/data.dart';
import 'package:hotels_guide/domain/use_case/get_hotels_use_case.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_bloc.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_event.dart';
import 'package:hotels_guide/ui/hotels/bloc/hotels_state.dart';
import 'package:mockito/mockito.dart';
import 'package:hotels_guide/utils/result.dart';

import 'entity_data_mock.dart';

class MockGetHotelsUseCase extends Mock implements GetHotelsUseCase {
  bool returnError = false;

  @override
  Future<Result<Data>> call({void params}) async {
    if (returnError) {
      return Result.error(Exception('Error fetching hotels'));
    }
    return Result.ok(entityDataMock);
  }

  void simulateError() => returnError = true;

  void simulateSuccess() => returnError = false;
}

void main() {
  late MockGetHotelsUseCase mockGetHotelsUseCase;
  late HotelsBloc hotelsBloc;

  setUp(() {
    mockGetHotelsUseCase = MockGetHotelsUseCase();
    hotelsBloc = HotelsBloc(mockGetHotelsUseCase);
  });

  group('HotelsBloc', () {
    test('initial state is HotelsInitial', () {
      expect(hotelsBloc.state, HotelsInitial());
    });

    blocTest<HotelsBloc, HotelsState>(
      'emits [HotelsLoading, HotelsLoaded] when GetHotelsUseCase returns Ok',
      build: () {
        mockGetHotelsUseCase.simulateSuccess();
        return hotelsBloc;
      },
      act: (bloc) => bloc.add(FetchHotelsEvent()),
      expect: () => [
        HotelsLoading(),
        HotelsLoaded(entityDataMock),
      ],
    );

    blocTest<HotelsBloc, HotelsState>(
      'emits [HotelsLoading, HotelsError] when GetHotelsUseCase returns Error',
      build: () {
        mockGetHotelsUseCase.simulateError();
        return hotelsBloc;
      },
      act: (bloc) => bloc.add(FetchHotelsEvent()),
      expect: () => [
        HotelsLoading(),
        HotelsError('Exception: Error fetching hotels'),
      ],
    );
  });
}
