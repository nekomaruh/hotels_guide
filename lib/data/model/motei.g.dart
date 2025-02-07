// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../domain/entity/motei.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoteiImpl _$$MoteiImplFromJson(Map<String, dynamic> json) => _$MoteiImpl(
      fantasia: json['fantasia'] as String,
      logo: json['logo'] as String,
      bairro: json['bairro'] as String,
      distancia: (json['distancia'] as num).toDouble(),
      qtdFavoritos: (json['qtdFavoritos'] as num).toInt(),
      suites: (json['suites'] as List<dynamic>)
          .map((e) => Suite.fromJson(e as Map<String, dynamic>))
          .toList(),
      qtdAvaliacoes: (json['qtdAvaliacoes'] as num).toInt(),
      media: (json['media'] as num).toDouble(),
    );

Map<String, dynamic> _$$MoteiImplToJson(_$MoteiImpl instance) =>
    <String, dynamic>{
      'fantasia': instance.fantasia,
      'logo': instance.logo,
      'bairro': instance.bairro,
      'distancia': instance.distancia,
      'qtdFavoritos': instance.qtdFavoritos,
      'suites': instance.suites,
      'qtdAvaliacoes': instance.qtdAvaliacoes,
      'media': instance.media,
    };
