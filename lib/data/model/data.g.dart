// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../domain/entity/data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      pagina: (json['pagina'] as num).toInt(),
      qtdPorPagina: (json['qtdPorPagina'] as num).toInt(),
      totalSuites: (json['totalSuites'] as num).toInt(),
      totalMoteis: (json['totalMoteis'] as num).toInt(),
      raio: (json['raio'] as num).toInt(),
      maxPaginas: (json['maxPaginas'] as num).toInt(),
      moteis: (json['moteis'] as List<dynamic>)
          .map((e) => Motei.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'pagina': instance.pagina,
      'qtdPorPagina': instance.qtdPorPagina,
      'totalSuites': instance.totalSuites,
      'totalMoteis': instance.totalMoteis,
      'raio': instance.raio,
      'maxPaginas': instance.maxPaginas,
      'moteis': instance.moteis,
    };
