import 'motei.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../data/model/data.freezed.dart';

part '../../data/model/data.g.dart';

@freezed
class Data with _$Data {
  const factory Data({
    required int pagina,
    required int qtdPorPagina,
    required int totalSuites,
    required int totalMoteis,
    required int raio,
    required int maxPaginas,
    required List<Motei> moteis,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}
