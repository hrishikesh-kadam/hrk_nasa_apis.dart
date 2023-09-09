import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'sbdb_cad_data.freezed.dart';
part 'sbdb_cad_data.g.dart';

@freezed
class SbdbCadData with _$SbdbCadData {
  const factory SbdbCadData({
    required String des,
    required String orbitId,
    required String jd,
    @CloseApproachDateTimeConverter() required DateTime cd,
    required String dist,
    required String distMin,
    required String distMax,
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

final closeApproachDateFormat = DateFormat('yyyy-MMM-dd HH:mm');

class CloseApproachDateTimeConverter
    implements JsonConverter<DateTime, String> {
  const CloseApproachDateTimeConverter();

  @override
  DateTime fromJson(String dateString) =>
      closeApproachDateFormat.parse(dateString);

  @override
  String toJson(DateTime dateTime) => closeApproachDateFormat.format(dateTime);
}
