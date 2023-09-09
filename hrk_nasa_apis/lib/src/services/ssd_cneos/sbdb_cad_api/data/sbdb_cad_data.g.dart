// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

// coverage:ignore-file

part of 'sbdb_cad_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SbdbCadData _$$_SbdbCadDataFromJson(Map<String, dynamic> json) =>
    _$_SbdbCadData(
      des: json['des'] as String,
      orbitId: json['orbit_id'] as String,
      jd: json['jd'] as String,
      cd: const CloseApproachDateTimeConverter().fromJson(json['cd'] as String),
      dist: json['dist'] as String,
      distMin: json['dist_min'] as String,
      distMax: json['dist_max'] as String,
      vRel: json['v_rel'] as String,
      vInf: json['v_inf'] as String?,
      tSigmaF: json['t_sigma_f'] as String,
      body: json['body'] as String?,
      h: json['h'] as String?,
      diameter: json['diameter'] as String?,
      diameterSigma: json['diameter_sigma'] as String?,
      fullname: json['fullname'] as String?,
    );

Map<String, dynamic> _$$_SbdbCadDataToJson(_$_SbdbCadData instance) {
  final val = <String, dynamic>{
    'des': instance.des,
    'orbit_id': instance.orbitId,
    'jd': instance.jd,
    'cd': const CloseApproachDateTimeConverter().toJson(instance.cd),
    'dist': instance.dist,
    'dist_min': instance.distMin,
    'dist_max': instance.distMax,
    'v_rel': instance.vRel,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('v_inf', instance.vInf);
  val['t_sigma_f'] = instance.tSigmaF;
  writeNotNull('body', instance.body);
  writeNotNull('h', instance.h);
  writeNotNull('diameter', instance.diameter);
  writeNotNull('diameter_sigma', instance.diameterSigma);
  writeNotNull('fullname', instance.fullname);
  return val;
}
