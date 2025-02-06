import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/domain/entity/desconto.dart';

void main() {

  group('Desconto model tests', () {

    test('should create a Desconto object from JSON correctly', () {
      final json = {'desconto': 15.0};
      final desconto = Desconto.fromJson(json);
      expect(desconto.desconto, 15.0);
    });

    test('should convert Desconto object to JSON correctly', () {
      final desconto = Desconto(desconto: 15.0);
      final json = desconto.toJson();
      expect(json, {'desconto': 15.0});
    });
  });

}
