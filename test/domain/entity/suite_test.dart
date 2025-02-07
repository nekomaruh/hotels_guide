import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/domain/entity/suite.dart';

void main() {
  group('Suite model tests', () {
    test('should create a Suite object from JSON correctly', () {
      final json = {
        'nome': 'nome',
        'qtd': 0,
        'exibirQtdDisponiveis': false,
        'fotos': [],
        'itens': [],
        'categoriaItens': [],
        'periodos': [],
      };

      final suite = Suite.fromJson(json);

      expect(suite.nome, 'nome');
      expect(suite.qtd, 0);
      expect(suite.exibirQtdDisponiveis, false);
      expect(suite.fotos, []);
      expect(suite.itens, []);
      expect(suite.categoriaItens, []);
      expect(suite.periodos, []);
    });

    test('should convert Suite object to JSON correctly', () {
      final suite = Suite(
        nome: 'nome',
        qtd: 0,
        exibirQtdDisponiveis: false,
        fotos: [],
        itens: [],
        categoriaItens: [],
        periodos: [],
      );

      final json = suite.toJson();

      expect(json, {
        'nome': 'nome',
        'qtd': 0,
        'exibirQtdDisponiveis': false,
        'fotos': [],
        'itens': [],
        'categoriaItens': [],
        'periodos': [],
      });
    });
  });
}