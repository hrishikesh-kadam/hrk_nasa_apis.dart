// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignatureImpl _$$SignatureImplFromJson(Map<String, dynamic> json) =>
    _$SignatureImpl(
      version: json['version'] as String,
      source: json['source'] as String,
    );

const _$$SignatureImplFieldMap = <String, String>{
  'version': 'version',
  'source': 'source',
};

Map<String, dynamic> _$$SignatureImplToJson(_$SignatureImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'source': instance.source,
    };
