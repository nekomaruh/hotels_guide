import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/utils/result.dart';

void main() {
  group('Result tests', () {
    test('should return correct value for Result.ok', () {
      final result = Result.ok(42);
      final value = (result as Ok<int>).value;
      expect(value, 42);
    });

    test('should return correct error for Result.error', () {
      final error = Exception('Something went wrong');
      final result = Result<int>.error(error);
      final errorResult = (result as Error<int>).error;
      expect(errorResult, error);
    });

    test('should correctly stringify Result.ok', () {
      final result = Result.ok(42);
      final resultString = result.toString();
      expect(resultString, 'Result<int>.ok(42)');
    });

    test('should correctly stringify Result.error', () {
      final error = Exception('Something went wrong');
      final result = Result<int>.error(error);
      final resultString = result.toString();
      expect(resultString, 'Result<int>.error(Exception: Something went wrong)');
    });

    test('should verify toString for Result.ok and Result.error', () {
      final okResult = Result.ok(42);
      final errorResult = Result<int>.error(Exception('Test error'));

      final okString = okResult.toString();
      final errorString = errorResult.toString();

      expect(okString, 'Result<int>.ok(42)');
      expect(errorString, 'Result<int>.error(Exception: Test error)');
    });
  });
}