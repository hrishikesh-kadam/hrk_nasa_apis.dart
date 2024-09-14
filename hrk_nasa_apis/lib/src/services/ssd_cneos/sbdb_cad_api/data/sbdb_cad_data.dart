import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:intl/intl.dart';

import 'query_parameters/sbdb_cad_query_parameters.dart';

part 'sbdb_cad_data.freezed.dart';
part 'sbdb_cad_data.g.dart';

@freezed
class SbdbCadData with _$SbdbCadData {
  const factory SbdbCadData({
    required String des,
    required String orbitId,

    /// https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/time.html#Julian%20Date
    required String jd,

    /// https://naif.jpl.nasa.gov/pub/naif/toolkit_docs/FORTRAN/req/time.html#Barycentric%20Dynamic%20Time%20TDB
    @CalendarDateTimeConverter() required DateTime cd,
    @DistanceConverter() required Distance dist,
    @DistanceConverter() required Distance distMin,
    @DistanceConverter() required Distance distMax,
    @VelocityConverter() required Velocity vRel,

    /// https://www.postman.com/hrishikesh-kadam/nasa-open-apis/request/tggtgtr/v-inf-null-2023-nm
    @VelocityConverter() Velocity? vInf,
    required String tSigmaF,
    String? body,
    String? h,
    @DiameterConverter() Distance? diameter,
    @DiameterConverter() Distance? diameterSigma,
    String? fullname,
  }) = _SbdbCadData;

  static final calendarDateFormat = DateFormat('yyyy-MMM-dd HH:mm');

  factory SbdbCadData.fromJson(Map<String, dynamic> json) =>
      _$SbdbCadDataFromJson(json);

  static const Map<String, String> fieldMap = _$$SbdbCadDataImplFieldMap;
}

class CalendarDateTimeConverter implements JsonConverter<DateTime, String> {
  const CalendarDateTimeConverter();

  @override
  DateTime fromJson(String dateString) =>
      SbdbCadData.calendarDateFormat.parse(dateString);

  @override
  String toJson(DateTime dateTime) =>
      SbdbCadData.calendarDateFormat.format(dateTime);
}

class DistanceConverter implements JsonConverter<Distance, String> {
  const DistanceConverter();

  @override
  Distance fromJson(String distanceString) {
    return Distance(
      value: double.parse(distanceString),
      unit: SbdbCadQueryParameters.distUnitDefault,
    );
  }

  @override
  String toJson(Distance distanceObject) => distanceObject.value.toString();
}

class VelocityConverter implements JsonConverter<Velocity, String> {
  const VelocityConverter();

  @override
  Velocity fromJson(String velocityString) {
    return Velocity(
      value: double.parse(velocityString),
      unit: SbdbCadQueryParameters.velocityUnitDefault,
    );
  }

  @override
  String toJson(Velocity velocityObject) => velocityObject.value.toString();
}

class DiameterConverter implements JsonConverter<Distance, String> {
  const DiameterConverter();

  @override
  Distance fromJson(String diameterString) {
    return Distance(
      value: double.parse(diameterString),
      unit: SbdbCadQueryParameters.diameterUnitDefault,
    );
  }

  @override
  String toJson(Distance diameterObject) => diameterObject.value.toString();
}
