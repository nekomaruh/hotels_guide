import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/domain/entity/categoria_iten.dart';

void main() {
  group('CategoriaIten model tests', () {

    test('should create a CategoriaIten object from JSON correctly', () {
      final json = {
        'nome': 'c_nome',
        'icone': 'c_icone',
      };

      final categoriaIten = CategoriaIten.fromJson(json);

      expect(categoriaIten.nome, 'c_nome');
      expect(categoriaIten.icone, 'c_icone');
    });

    test('should convert CategoriaIten object to JSON correctly', () {
      final categoriaIten = CategoriaIten(nome: 'c_nome', icone: 'c_icone');

      final json = categoriaIten.toJson();

      expect(json, {'nome': 'c_nome', 'icone': 'c_icone'});
    });

  });
}
