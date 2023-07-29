// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sbdb_cad_query_parameters.freezed.dart';
part 'sbdb_cad_query_parameters.g.dart';

@freezed
class SbdbCadQueryParameters with _$SbdbCadQueryParameters {
  @JsonSerializable(
    fieldRename: FieldRename.kebab,
  )
  factory SbdbCadQueryParameters({
    String? dateMin,
    String? dateMax,
    String? distMin,
    String? distMax,
    String? minDistMin,
    String? minDistMax,
    String? hMin,
    double? hMax,
    double? vInfMin,
    double? vInfMax,
    double? vRelMin,
    double? vRelMax,
    @JsonKey(name: 'class') String? orbitClass,
    bool? pha,
    bool? nea,
    bool? commet,
    bool? neaCommet,
    bool? neo,
    String? kind,
    int? spk,
    String? des,
    String? body,
    String? sort,
    double? limit,
    double? limitFrom,
    bool? totalOnly,
    bool? diameter,
    bool? fullname,
  }) = _SbdbCadQueryParameters;

  factory SbdbCadQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$SbdbCadQueryParametersFromJson(json);
}
