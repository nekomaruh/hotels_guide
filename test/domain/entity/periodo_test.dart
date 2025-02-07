import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/domain/entity/periodo.dart';

void main() {

  group('Periodo model tests', () {
    test('should create a Periodo object from JSON correctly', () {
      final json = {
        'tempoFormatado': '12 horas',
        'tempo': '12',
        'valor': 100.0,
        'valorTotal': 200.0,
        'temCortesia': true,
        'desconto': null,
      };

      final periodo = Periodo.fromJson(json);

      expect(periodo.tempoFormatado, '12 horas');
      expect(periodo.tempo, '12');
      expect(periodo.valor, 100.0);
      expect(periodo.valorTotal, 200.0);
      expect(periodo.temCortesia, true);
      expect(periodo.desconto, null);
    });

    test('should convert Periodo object to JSON correctly', () {
      final periodo = Periodo(
        tempoFormatado: '12 horas',
        tempo: '12',
        valor: 100.0,
        valorTotal: 200.0,
        temCortesia: true,
        desconto: null,
      );

      final json = periodo.toJson();

      expect(json, {
        'tempoFormatado': '12 horas',
        'tempo': '12',
        'valor': 100.0,
        'valorTotal': 200.0,
        'temCortesia': true,
        'desconto': null,
      });
    });

  });
}
