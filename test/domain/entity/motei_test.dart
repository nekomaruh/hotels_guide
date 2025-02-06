import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/domain/entity/motei.dart';

void main() {
  group('Motei model tests', () {
    test('should create a Motei object from JSON correctly', () {
      final json = {
        'fantasia': 'fantasia',
        'logo': 'logo',
        'bairro': 'bairro',
        'distancia': 0,
        'qtdFavoritos': 0,
        'suites': [],
        'qtdAvaliacoes': 0,
        'media': 0,
      };

      final motei = Motei.fromJson(json);

      expect(motei.fantasia, 'fantasia');
      expect(motei.logo, 'logo');
      expect(motei.bairro, 'bairro');
      expect(motei.distancia, 0);
      expect(motei.qtdFavoritos, 0);
      expect(motei.suites.length, 0);
      expect(motei.qtdAvaliacoes, 0);
      expect(motei.media, 0);
    });

    test('should convert Motei object to JSON correctly', () {
      final motei = Motei(
        fantasia: "fantasia",
        logo: "logo",
        bairro: "bairro",
        distancia: 0,
        qtdFavoritos: 0,
        suites: [],
        qtdAvaliacoes: 0,
        media: 0,
      );

      final json = motei.toJson();

      expect(json, {
        'fantasia': 'fantasia',
        'logo': 'logo',
        'bairro': 'bairro',
        'distancia': 0,
        'qtdFavoritos': 0,
        'suites': [],
        'qtdAvaliacoes': 0,
        'media': 0,
      });
    });
  });
}
