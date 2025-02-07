import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/config/dependencies.dart';
import 'package:mockito/mockito.dart';

class MockSetupFunctions extends Mock {
  void setupHttpClient();
  void setupRepository();
  void setupUseCases();
}

void main() {
  late MockSetupFunctions mockFunctions;

  setUpAll(() {
    mockFunctions = MockSetupFunctions();
  });

  tearDownAll(() {
    sl.reset(dispose: true);
  });

  test('should call dependencies', () async {
    when(mockFunctions.setupHttpClient()).thenAnswer((_) async {});
    when(mockFunctions.setupRepository()).thenAnswer((_) async {});
    when(mockFunctions.setupUseCases()).thenAnswer((_) async {});

    await setupDependencies();

    verifyNever(mockFunctions.setupHttpClient()).called(0);
    verifyNever(mockFunctions.setupRepository()).called(0);
    verifyNever(mockFunctions.setupUseCases()).called(0);
  });
}