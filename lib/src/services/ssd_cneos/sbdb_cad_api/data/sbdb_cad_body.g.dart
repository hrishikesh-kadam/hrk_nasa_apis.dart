// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'sbdb_cad_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SbdbCadBody _$$_SbdbCadBodyFromJson(Map<String, dynamic> json) =>
    _$_SbdbCadBody(
      signature: Signature.fromJson(json['signature'] as Map<String, dynamic>),
      count: json['count'] as int,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SbdbCadData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SbdbCadBodyToJson(_$_SbdbCadBody instance) =>
    <String, dynamic>{
      'signature': instance.signature,
      'count': instance.count,
      'data': instance.data,
    };
