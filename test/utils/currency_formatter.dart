import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/utils/currency_formatter.dart';

// TODO: Review test
void main() {
  group('formatCurrency tests', () {
    test('should format currency correctly with BRL settings', () {
      double input = 1234.56;
      String result = formatBrlCurrency(input);
      expect(result, 'R\$ 1.234,56');
    });

    test('should format currency correctly with no decimal', () {
      double input = 1000.00;
      String result = formatBrlCurrency(input);
      expect(result, 'R\$ 1.000');
    });

    test('should handle zero correctly', () {
      double input = 0;
      String result = formatBrlCurrency(input);
      expect(result, 'R\$ 0');
    });

    test('should handle large numbers correctly', () {
      double input = 1234567.89;
      String result = formatBrlCurrency(input);
      expect(result, 'R\$ 1.234.567,89');
    });

    test('should handle negative values correctly', () {
      double input = -1234.56;
      String result = formatBrlCurrency(input);
      expect(result, 'R\$ -1.234,56');
    });
  });
}