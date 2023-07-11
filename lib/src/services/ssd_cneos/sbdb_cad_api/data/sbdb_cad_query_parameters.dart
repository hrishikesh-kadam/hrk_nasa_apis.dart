import 'package:freezed_annotation/freezed_annotation.dart';

part 'sbdb_cad_query_parameters.freezed.dart';
part 'sbdb_cad_query_parameters.g.dart';

@unfreezed
class SbdbCadQueryParameters with _$SbdbCadQueryParameters {
  // ignore: invalid_annotation_target
  @JsonSerializable(
    fieldRename: FieldRename.kebab,
    includeIfNull: false,
  )
  factory SbdbCadQueryParameters({
    String? dateMin,
    String? dateMax,
  }) = _SbdbCadQueryParameters;

  factory SbdbCadQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$SbdbCadQueryParametersFromJson(json);
}
