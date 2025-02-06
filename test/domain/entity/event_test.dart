import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/domain/entity/event.dart';

void main() {
  group('Event model tests', () {
    test('should create an Event from JSON correctly', () {
      final json = {
        'sucesso': true,
        'data': null,
        'mensagem': ['Success message'],
      };

      final event = Event.fromJson(json);

      expect(event.sucesso, true);
      expect(event.data, null);
      expect(event.mensagem, ['Success message']);
    });

    test('should convert Event to JSON correctly', () {
      final event = Event(
        sucesso: true,
        data: null,
        mensagem: ['Success message'],
      );

      final json = event.toJson();

      expect(json, {
        'sucesso': true,
        'data': null,
        'mensagem': ['Success message'],
      });
    });
  });
}