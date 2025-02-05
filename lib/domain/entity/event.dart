import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part '../../data/model/event.freezed.dart';
part '../../data/model/event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required bool sucesso,
    required Data data,
    required List<dynamic> mensagem,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json) => _$EventFromJson(json);
}