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
    required String vRel,

    /// https://www.postman.com/hrishikesh-kadam/workspace/nasa-open-apis/request/2540023-c37a302c-170a-4beb-a368-7a472a79ea18
    String? vInf,
    required String tSigmaF,
    String? body,
    String? h,
    String? diameter,
    String? diameterSigma,
    String? fullname,
  }) = _SbdbCadData;

  factory SbdbCadData.fromJson(Map<String, dynamic> json) =>
      _$SbdbCadDataFromJson(json);
}

final calendarDateFormat = DateFormat('yyyy-MMM-dd HH:mm');

class CalendarDateTimeConverter implements JsonConverter<DateTime, String> {
  const CalendarDateTimeConverter();

  @override
  DateTime fromJson(String dateString) => calendarDateFormat.parse(dateString);

  @override
  String toJson(DateTime dateTime) => calendarDateFormat.format(dateTime);
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
