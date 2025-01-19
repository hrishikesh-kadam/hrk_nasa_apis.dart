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
        _$SbdbCadQueryParametersImpl instance) =>
    <String, dynamic>{
      if (instance.dateMin case final value?) 'date-min': value,
      if (instance.dateMax case final value?) 'date-max': value,
      if (instance.distMin case final value?) 'dist-min': value,
      if (instance.distMax case final value?) 'dist-max': value,
      if (instance.minDistMin case final value?) 'min-dist-min': value,
      if (instance.minDistMax case final value?) 'min-dist-max': value,
      if (instance.hMin case final value?) 'h-min': value,
      if (instance.hMax case final value?) 'h-max': value,
      if (instance.vInfMin case final value?) 'v-inf-min': value,
      if (instance.vInfMax case final value?) 'v-inf-max': value,
      if (instance.vRelMin case final value?) 'v-rel-min': value,
      if (instance.vRelMax case final value?) 'v-rel-max': value,
      if (instance.orbitClass case final value?) 'class': value,
      if (instance.pha case final value?) 'pha': value,
      if (instance.nea case final value?) 'nea': value,
      if (instance.comet case final value?) 'comet': value,
      if (instance.neaComet case final value?) 'nea-comet': value,
      if (instance.neo case final value?) 'neo': value,
      if (instance.kind case final value?) 'kind': value,
      if (instance.spk case final value?) 'spk': value,
      if (instance.des case final value?) 'des': value,
      if (_$CloseApproachBodyEnumMap[instance.body] case final value?)
        'body': value,
      if (instance.sort case final value?) 'sort': value,
      if (instance.limit case final value?) 'limit': value,
      if (instance.limitFrom case final value?) 'limit-from': value,
      if (instance.totalOnly case final value?) 'total-only': value,
      if (instance.diameter case final value?) 'diameter': value,
      if (instance.fullname case final value?) 'fullname': value,
    };

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
