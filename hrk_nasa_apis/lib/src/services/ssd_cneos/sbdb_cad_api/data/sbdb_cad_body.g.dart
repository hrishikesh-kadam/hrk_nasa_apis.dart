// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, constant_identifier_names

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
      total: json['total'] as int?,
      rawBody: json['raw_body'] as Map<String, dynamic>?,
    );

const _$$_SbdbCadBodyFieldMap = <String, String>{
  'signature': 'signature',
  'count': 'count',
  'data': 'data',
  'total': 'total',
  'rawBody': 'raw_body',
};

Map<String, dynamic> _$$_SbdbCadBodyToJson(_$_SbdbCadBody instance) {
  final val = <String, dynamic>{
    'signature': instance.signature,
    'count': instance.count,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('total', instance.total);
  writeNotNull('raw_body', instance.rawBody);
  return val;
}
