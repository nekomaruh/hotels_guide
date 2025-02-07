import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels_guide/domain/entity/periodo.dart';

import 'categoria_iten.dart';
import 'iten.dart';

part '../../data/model/suite.freezed.dart';
part '../../data/model/suite.g.dart';

@freezed
class Suite with _$Suite {
  const factory Suite({
    required String nome,
    required int qtd,
    required bool exibirQtdDisponiveis,
    required List<String> fotos,
    required List<Iten> itens,
    required List<CategoriaIten> categoriaItens,
    required List<Periodo> periodos,
  }) = _Suite;

  factory Suite.fromJson(Map<String, Object?> json) => _$SuiteFromJson(json);
}
