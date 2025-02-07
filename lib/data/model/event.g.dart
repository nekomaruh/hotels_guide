// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../domain/entity/event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      sucesso: json['sucesso'] as bool,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      mensagem: json['mensagem'] as List<dynamic>,
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'sucesso': instance.sucesso,
      'data': instance.data,
      'mensagem': instance.mensagem,
    };
