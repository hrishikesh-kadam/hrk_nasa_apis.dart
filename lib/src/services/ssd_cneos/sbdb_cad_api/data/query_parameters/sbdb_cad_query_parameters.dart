// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'close_approach_body.dart';
import 'data_output.dart';
import 'small_body.dart';
import 'small_body_selector.dart';

part 'sbdb_cad_query_parameters.freezed.dart';
part 'sbdb_cad_query_parameters.g.dart';

@freezed
class SbdbCadQueryParameters with _$SbdbCadQueryParameters {
  const SbdbCadQueryParameters._();

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
    bool? comet,
    bool? neaComet,
    bool? neo,
    String? kind,
    int? spk,
    String? des,
    CloseApproachBody? body,
    String? sort,
    double? limit,
    double? limitFrom,
    bool? totalOnly,
    bool? diameter,
    bool? fullname,
  }) = _SbdbCadQueryParameters;

  factory SbdbCadQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$SbdbCadQueryParametersFromJson(json);

  static const SmallBody defaultSmallBody = SmallBody.neo;
  static const CloseApproachBody defaultCloseApproachBody =
      CloseApproachBody.earth;

  SbdbCadQueryParameters copyWithSmallBody(
    SmallBody smallBody, {
    bool? value = true,
  }) {
    // TODO(hrishikesh-kadam): unused_result lint is false positive
    // Issue: https://github.com/dart-lang/sdk/issues/52314
    // Remove the lint after the following fix is in stable
    // https://github.com/dart-lang/sdk/commit/b0b393773fa7d7965c6c9ea3a501e93dc60812f9
    return switch (smallBody) {
      defaultSmallBody => this,
      // ignore: unused_result
      SmallBody.pha => copyWith(pha: value),
      // ignore: unused_result
      SmallBody.nea => copyWith(nea: value),
      // ignore: unused_result
      SmallBody.comet => copyWith(comet: value),
      // ignore: unused_result
      SmallBody.neaComet => copyWith(neaComet: value),
    };
  }

  SbdbCadQueryParameters copyWithSmallBodySelector(
    SmallBodySelector smallBodySelector, {
    int? spkId,
    String? desgination,
  }) {
    return switch (smallBodySelector) {
      // ignore: unused_result
      SmallBodySelector.spkId => copyWith(spk: spkId),
      // ignore: unused_result
      SmallBodySelector.designation => copyWith(des: desgination),
    };
  }

  SbdbCadQueryParameters copyWithDataOutput(
    Set<DataOutput> dataOutputSet,
  ) {
    SbdbCadQueryParameters queryparameters = this;
    for (final dataOutput in dataOutputSet) {
      queryparameters = switch (dataOutput) {
        // ignore: unused_result
        DataOutput.totalOnly => queryparameters.copyWith(totalOnly: true),
        // ignore: unused_result
        DataOutput.diameter => queryparameters.copyWith(diameter: true),
        // ignore: unused_result
        DataOutput.fullname => queryparameters.copyWith(fullname: true),
      };
    }
    return queryparameters;
  }
}
