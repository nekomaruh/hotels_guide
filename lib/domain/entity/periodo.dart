import 'package:freezed_annotation/freezed_annotation.dart';

import 'desconto.dart';

part '../../data/model/periodo.freezed.dart';
part '../../data/model/periodo.g.dart';

@freezed
class Periodo with _$Periodo {
  const factory Periodo({
    required String tempoFormatado,
    required String tempo,
    required double valor,
    required double valorTotal,
    required bool temCortesia,
    required Desconto? desconto,
  }) = _Periodo;

  factory Periodo.fromJson(Map<String, Object?> json) => _$PeriodoFromJson(json);
}