// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'sbdb_cad_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbdbCadBodyImpl _$$SbdbCadBodyImplFromJson(Map<String, dynamic> json) =>
    _$SbdbCadBodyImpl(
      signature: Signature.fromJson(json['signature'] as Map<String, dynamic>),
      count: (json['count'] as num).toInt(),
      fields:
          (json['fields'] as List<dynamic>?)?.map((e) => e as String).toList(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SbdbCadData.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      rawBody: json['raw_body'] as Map<String, dynamic>?,
    );

const _$$SbdbCadBodyImplFieldMap = <String, String>{
  'signature': 'signature',
  'count': 'count',
  'fields': 'fields',
  'data': 'data',
  'total': 'total',
  'rawBody': 'raw_body',
};

Map<String, dynamic> _$$SbdbCadBodyImplToJson(_$SbdbCadBodyImpl instance) {
  final val = <String, dynamic>{
    'signature': instance.signature,
    'count': instance.count,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fields', instance.fields);
  writeNotNull('data', instance.data);
  writeNotNull('total', instance.total);
  writeNotNull('raw_body', instance.rawBody);
  return val;
}
