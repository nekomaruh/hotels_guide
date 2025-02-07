import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/utils/currency_formatter.dart';
import 'package:mockito/mockito.dart';

class MockCurrencyFormatter extends Mock implements CurrencyFormatter {}

void main() {
  group('BrlCurrencyExtension', () {
    test('formats positive value correctly', () {
      double value = 1234.56;
      final result = value.toBrlCurrency();
      expect(result, isA<String>());
      expect(result, equals('R\$ 1.234,56'));
    });

    test('formats negative value correctly', () {
      double value = -1234.56;
      final result = value.toBrlCurrency();
      expect(result, isA<String>());
      expect(result, equals('R\$ -1.234,56'));
    });

    test('formats zero correctly', () {
      double value = 0.0;
      final result = value.toBrlCurrency();
      expect(result, isA<String>());
      expect(result, equals('R\$ 0'));
    });

    test('formats large value correctly', () {
      double value = 1234567.89;
      final result = value.toBrlCurrency();
      expect(result, isA<String>());
      expect(result, equals('R\$ 1.234.567,89'));
    });

    test('formats small value correctly', () {
      double value = 0.99;
      final result = value.toBrlCurrency();
      expect(result, isA<String>());
      expect(result, equals('R\$ 0,99'));
    });

    test('formats value with no decimal places correctly', () {
      double value = 1000.0;
      final result = value.toBrlCurrency();
      expect(result, isA<String>());
      expect(result, equals('R\$ 1.000'));
    });

    test('formats value with many decimal places correctly', () {
      double value = 1234.56789;
      final result = value.toBrlCurrency();
      expect(result, isA<String>());
      expect(result, equals('R\$ 1.234,57'));
    });
  });
}