import 'package:freezed_annotation/freezed_annotation.dart';

part 'sbdb_cad_data.freezed.dart';
part 'sbdb_cad_data.g.dart';

@freezed
class SbdbCadData with _$SbdbCadData {
  factory SbdbCadData({
    required String des,
    required String orbitId,
    required String jd,
    required String cd,
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
