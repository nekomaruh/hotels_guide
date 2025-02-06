import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/domain/entity/iten.dart';

void main() {
  group('Iten model tests', () {

    test('should create an Iten object from JSON correctly', () {
      final json = {'nome': 'item_nome'};
      final iten = Iten.fromJson(json);
      expect(iten.nome, 'item_nome');
    });

    test('should convert Iten object to JSON correctly', () {
      final iten = Iten(nome: 'item_nome');
      final json = iten.toJson();
      expect(json, {'nome': 'item_nome'});
    });
    
  });
}
