// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../domain/entity/periodo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeriodoImpl _$$PeriodoImplFromJson(Map<String, dynamic> json) =>
    _$PeriodoImpl(
      tempoFormatado: json['tempoFormatado'] as String,
      tempo: json['tempo'] as String,
      valor: (json['valor'] as num).toDouble(),
      valorTotal: (json['valorTotal'] as num).toDouble(),
      temCortesia: json['temCortesia'] as bool,
      desconto: json['desconto'] == null
          ? null
          : Desconto.fromJson(json['desconto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PeriodoImplToJson(_$PeriodoImpl instance) =>
    <String, dynamic>{
      'tempoFormatado': instance.tempoFormatado,
      'tempo': instance.tempo,
      'valor': instance.valor,
      'valorTotal': instance.valorTotal,
      'temCortesia': instance.temCortesia,
      'desconto': instance.desconto,
    };
