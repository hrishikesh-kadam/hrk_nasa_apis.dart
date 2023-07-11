// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

// coverage:ignore-file

part of 'sbdb_cad_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SbdbCadQueryParameters _$$_SbdbCadQueryParametersFromJson(
        Map<String, dynamic> json) =>
    _$_SbdbCadQueryParameters(
      dateMin: json['date-min'] as String?,
      dateMax: json['date-max'] as String?,
      distMin: json['dist-min'] as String?,
      distMax: json['dist-max'] as String?,
      minDistMin: json['min-dist-min'] as String?,
      minDistMax: json['min-dist-max'] as String?,
      hMin: json['h-min'] as String?,
      hMax: (json['h-max'] as num?)?.toDouble(),
      vInfMin: (json['v-inf-min'] as num?)?.toDouble(),
      vInfMax: (json['v-inf-max'] as num?)?.toDouble(),
      vRelMin: (json['v-rel-min'] as num?)?.toDouble(),
      vRelMax: (json['v-rel-max'] as num?)?.toDouble(),
      orbitClass: json['class'] as String?,
      pha: json['pha'] as bool?,
      nea: json['nea'] as bool?,
      commet: json['commet'] as bool?,
      neaCommet: json['nea-commet'] as bool?,
      neo: json['neo'] as bool?,
      kind: json['kind'] as String?,
      spk: json['spk'] as int?,
      des: json['des'] as String?,
      body: json['body'] as String?,
      sort: json['sort'] as String?,
      limit: (json['limit'] as num?)?.toDouble(),
      limitFrom: (json['limit-from'] as num?)?.toDouble(),
      totalOnly: json['total-only'] as bool?,
      diameter: json['diameter'] as bool?,
      fullname: json['fullname'] as bool?,
    );

Map<String, dynamic> _$$_SbdbCadQueryParametersToJson(
    _$_SbdbCadQueryParameters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date-min', instance.dateMin);
  writeNotNull('date-max', instance.dateMax);
  writeNotNull('dist-min', instance.distMin);
  writeNotNull('dist-max', instance.distMax);
  writeNotNull('min-dist-min', instance.minDistMin);
  writeNotNull('min-dist-max', instance.minDistMax);
  writeNotNull('h-min', instance.hMin);
  writeNotNull('h-max', instance.hMax);
  writeNotNull('v-inf-min', instance.vInfMin);
  writeNotNull('v-inf-max', instance.vInfMax);
  writeNotNull('v-rel-min', instance.vRelMin);
  writeNotNull('v-rel-max', instance.vRelMax);
  writeNotNull('class', instance.orbitClass);
  writeNotNull('pha', instance.pha);
  writeNotNull('nea', instance.nea);
  writeNotNull('commet', instance.commet);
  writeNotNull('nea-commet', instance.neaCommet);
  writeNotNull('neo', instance.neo);
  writeNotNull('kind', instance.kind);
  writeNotNull('spk', instance.spk);
  writeNotNull('des', instance.des);
  writeNotNull('body', instance.body);
  writeNotNull('sort', instance.sort);
  writeNotNull('limit', instance.limit);
  writeNotNull('limit-from', instance.limitFrom);
  writeNotNull('total-only', instance.totalOnly);
  writeNotNull('diameter', instance.diameter);
  writeNotNull('fullname', instance.fullname);
  return val;
}
