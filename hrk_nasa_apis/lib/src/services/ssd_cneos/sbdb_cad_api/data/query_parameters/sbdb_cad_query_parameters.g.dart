// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'sbdb_cad_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbdbCadQueryParametersImpl _$$SbdbCadQueryParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$SbdbCadQueryParametersImpl(
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
      comet: json['comet'] as bool?,
      neaComet: json['nea-comet'] as bool?,
      neo: json['neo'] as bool?,
      kind: json['kind'] as String?,
      spk: (json['spk'] as num?)?.toInt(),
      des: json['des'] as String?,
      body: $enumDecodeNullable(_$CloseApproachBodyEnumMap, json['body']),
      sort: json['sort'] as String?,
      limit: (json['limit'] as num?)?.toDouble(),
      limitFrom: (json['limit-from'] as num?)?.toDouble(),
      totalOnly: json['total-only'] as bool?,
      diameter: json['diameter'] as bool?,
      fullname: json['fullname'] as bool?,
    );

const _$$SbdbCadQueryParametersImplFieldMap = <String, String>{
  'dateMin': 'date-min',
  'dateMax': 'date-max',
  'distMin': 'dist-min',
  'distMax': 'dist-max',
  'minDistMin': 'min-dist-min',
  'minDistMax': 'min-dist-max',
  'hMin': 'h-min',
  'hMax': 'h-max',
  'vInfMin': 'v-inf-min',
  'vInfMax': 'v-inf-max',
  'vRelMin': 'v-rel-min',
  'vRelMax': 'v-rel-max',
  'orbitClass': 'class',
  'pha': 'pha',
  'nea': 'nea',
  'comet': 'comet',
  'neaComet': 'nea-comet',
  'neo': 'neo',
  'kind': 'kind',
  'spk': 'spk',
  'des': 'des',
  'body': 'body',
  'sort': 'sort',
  'limit': 'limit',
  'limitFrom': 'limit-from',
  'totalOnly': 'total-only',
  'diameter': 'diameter',
  'fullname': 'fullname',
};

Map<String, dynamic> _$$SbdbCadQueryParametersImplToJson(
    _$SbdbCadQueryParametersImpl instance) {
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
  writeNotNull('comet', instance.comet);
  writeNotNull('nea-comet', instance.neaComet);
  writeNotNull('neo', instance.neo);
  writeNotNull('kind', instance.kind);
  writeNotNull('spk', instance.spk);
  writeNotNull('des', instance.des);
  writeNotNull('body', _$CloseApproachBodyEnumMap[instance.body]);
  writeNotNull('sort', instance.sort);
  writeNotNull('limit', instance.limit);
  writeNotNull('limit-from', instance.limitFrom);
  writeNotNull('total-only', instance.totalOnly);
  writeNotNull('diameter', instance.diameter);
  writeNotNull('fullname', instance.fullname);
  return val;
}

const _$CloseApproachBodyEnumMap = {
  CloseApproachBody.mercury: 'Merc',
  CloseApproachBody.venus: 'Venus',
  CloseApproachBody.earth: 'Earth',
  CloseApproachBody.mars: 'Mars',
  CloseApproachBody.jupiter: 'Juptr',
  CloseApproachBody.saturn: 'Satrn',
  CloseApproachBody.uranus: 'Urnus',
  CloseApproachBody.neptune: 'Neptn',
  CloseApproachBody.pluto: 'Pluto',
  CloseApproachBody.moon: 'Moon',
  CloseApproachBody.all: 'ALL',
};
