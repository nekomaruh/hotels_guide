// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../domain/entity/suite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuiteImpl _$$SuiteImplFromJson(Map<String, dynamic> json) => _$SuiteImpl(
      nome: json['nome'] as String,
      qtd: (json['qtd'] as num).toInt(),
      exibirQtdDisponiveis: json['exibirQtdDisponiveis'] as bool,
      fotos: (json['fotos'] as List<dynamic>).map((e) => e as String).toList(),
      itens: (json['itens'] as List<dynamic>)
          .map((e) => Iten.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoriaItens: (json['categoriaItens'] as List<dynamic>)
          .map((e) => CategoriaIten.fromJson(e as Map<String, dynamic>))
          .toList(),
      periodos: (json['periodos'] as List<dynamic>)
          .map((e) => Periodo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SuiteImplToJson(_$SuiteImpl instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'qtd': instance.qtd,
      'exibirQtdDisponiveis': instance.exibirQtdDisponiveis,
      'fotos': instance.fotos,
      'itens': instance.itens,
      'categoriaItens': instance.categoriaItens,
      'periodos': instance.periodos,
    };
