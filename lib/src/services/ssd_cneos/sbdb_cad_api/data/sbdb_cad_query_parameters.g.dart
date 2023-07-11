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
  return val;
}
