import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/domain/entity/data.dart';

void main() {
  group('Data model tests', () {
    test('should create a Data object from JSON correctly', () {
      final json = {
        'pagina': 0,
        'qtdPorPagina': 0,
        'totalSuites': 0,
        'totalMoteis': 0,
        'raio': 0,
        'maxPaginas': 0,
        'moteis': [],
      };

      final data = Data.fromJson(json);

      expect(data.pagina, 0);
      expect(data.qtdPorPagina, 0);
      expect(data.totalSuites, 0);
      expect(data.totalMoteis, 0);
      expect(data.raio, 0);
      expect(data.maxPaginas, 0);
      expect(data.moteis.length, 0);
    });

    test('should convert Data object to JSON correctly', () {
      final data = Data(
        pagina: 0,
        qtdPorPagina: 0,
        totalSuites: 0,
        totalMoteis: 0,
        raio: 0,
        maxPaginas: 0,
        moteis: [],
      );

      final json = data.toJson();

      expect(json, {
        'pagina': 0,
        'qtdPorPagina': 0,
        'totalSuites': 0,
        'totalMoteis': 0,
        'raio': 0,
        'maxPaginas': 0,
        'moteis': [],
      });
    });
  });
}
