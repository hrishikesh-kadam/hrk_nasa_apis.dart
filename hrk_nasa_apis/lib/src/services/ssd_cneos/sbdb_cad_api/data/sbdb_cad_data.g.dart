// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'sbdb_cad_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbdbCadDataImpl _$$SbdbCadDataImplFromJson(Map<String, dynamic> json) =>
    _$SbdbCadDataImpl(
      des: json['des'] as String,
      orbitId: json['orbit_id'] as String,
      jd: json['jd'] as String,
      cd: const CalendarDateTimeConverter().fromJson(json['cd'] as String),
      dist: const DistanceConverter().fromJson(json['dist'] as String),
      distMin: const DistanceConverter().fromJson(json['dist_min'] as String),
      distMax: const DistanceConverter().fromJson(json['dist_max'] as String),
      vRel: const VelocityConverter().fromJson(json['v_rel'] as String),
      vInf: _$JsonConverterFromJson<String, ValueUnit<double, VelocityUnit>>(
          json['v_inf'], const VelocityConverter().fromJson),
      tSigmaF: json['t_sigma_f'] as String,
      body: json['body'] as String?,
      h: json['h'] as String?,
      diameter:
          _$JsonConverterFromJson<String, ValueUnit<double, DistanceUnit>>(
              json['diameter'], const DiameterConverter().fromJson),
      diameterSigma:
          _$JsonConverterFromJson<String, ValueUnit<double, DistanceUnit>>(
              json['diameter_sigma'], const DiameterConverter().fromJson),
      fullname: json['fullname'] as String?,
    );

const _$$SbdbCadDataImplFieldMap = <String, String>{
  'des': 'des',
  'orbitId': 'orbit_id',
  'jd': 'jd',
  'cd': 'cd',
  'dist': 'dist',
  'distMin': 'dist_min',
  'distMax': 'dist_max',
  'vRel': 'v_rel',
  'vInf': 'v_inf',
  'tSigmaF': 't_sigma_f',
  'body': 'body',
  'h': 'h',
  'diameter': 'diameter',
  'diameterSigma': 'diameter_sigma',
  'fullname': 'fullname',
};

Map<String, dynamic> _$$SbdbCadDataImplToJson(_$SbdbCadDataImpl instance) {
  final val = <String, dynamic>{
    'des': instance.des,
    'orbit_id': instance.orbitId,
    'jd': instance.jd,
    'cd': const CalendarDateTimeConverter().toJson(instance.cd),
    'dist': const DistanceConverter().toJson(instance.dist),
    'dist_min': const DistanceConverter().toJson(instance.distMin),
    'dist_max': const DistanceConverter().toJson(instance.distMax),
    'v_rel': const VelocityConverter().toJson(instance.vRel),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'v_inf',
      _$JsonConverterToJson<String, ValueUnit<double, VelocityUnit>>(
          instance.vInf, const VelocityConverter().toJson));
  val['t_sigma_f'] = instance.tSigmaF;
  writeNotNull('body', instance.body);
  writeNotNull('h', instance.h);
  writeNotNull(
      'diameter',
      _$JsonConverterToJson<String, ValueUnit<double, DistanceUnit>>(
          instance.diameter, const DiameterConverter().toJson));
  writeNotNull(
      'diameter_sigma',
      _$JsonConverterToJson<String, ValueUnit<double, DistanceUnit>>(
          instance.diameterSigma, const DiameterConverter().toJson));
  writeNotNull('fullname', instance.fullname);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
