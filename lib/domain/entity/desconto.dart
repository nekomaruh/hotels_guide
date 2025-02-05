import 'package:freezed_annotation/freezed_annotation.dart';

part '../../data/model/desconto.freezed.dart';
part '../../data/model/desconto.g.dart';

@freezed
class Desconto with _$Desconto {
  const factory Desconto({
    required double desconto,
  }) = _Desconto;

  factory Desconto.fromJson(Map<String, Object?> json) => _$DescontoFromJson(json);
}