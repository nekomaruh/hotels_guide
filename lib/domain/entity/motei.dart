import 'package:hotels_guide/domain/entity/suite.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../data/model/motei.freezed.dart';

part '../../data/model/motei.g.dart';

@freezed
class Motei with _$Motei {
  const factory Motei({
    required String fantasia,
    required String logo,
    required String bairro,
    required double distancia,
    required int qtdFavoritos,
    required List<Suite> suites,
    required int qtdAvaliacoes,
    required double media,
  }) = _Motei;

  factory Motei.fromJson(Map<String, Object?> json) => _$MoteiFromJson(json);
}
