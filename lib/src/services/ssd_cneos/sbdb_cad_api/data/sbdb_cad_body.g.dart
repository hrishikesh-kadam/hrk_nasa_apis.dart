// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

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
      rawBody: json['raw_body'] as Map<String, dynamic>?,
    );

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
  writeNotNull('raw_body', instance.rawBody);
  return val;
}
