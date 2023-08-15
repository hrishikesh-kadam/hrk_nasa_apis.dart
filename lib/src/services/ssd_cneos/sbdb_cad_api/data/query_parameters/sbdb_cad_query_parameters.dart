// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrk_batteries/hrk_batteries.dart';

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
  const factory SbdbCadQueryParameters({
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

  static const DistanceUnit defaultDistanceUnit = DistanceUnit.au;
  static const Distance defaultDistMax = Distance(
    value: 0.05,
    unit: defaultDistanceUnit,
  );
  static const SmallBody defaultSmallBody = SmallBody.neo;
  static const CloseApproachBody defaultCloseApproachBody =
      CloseApproachBody.earth;

  SbdbCadQueryParameters copyWithDistanceRange(
    DistanceRange distanceRange,
  ) {
    SbdbCadQueryParameters queryparameters = this;
    if (distanceRange.start?.value != null) {
      Distance distMin = distanceRange.start!;
      String unit = '';
      if (distMin.unit != null && distMin.unit != defaultDistanceUnit) {
        unit = distMin.unit!.symbol;
      }
      queryparameters = queryparameters.copyWith(
        distMin: '${distMin.value}$unit',
      );
    } else {
      queryparameters = queryparameters.copyWith(distMin: null);
    }
    if (distanceRange.end?.value != null &&
        distanceRange.end != defaultDistMax) {
      Distance distMax = distanceRange.end!;
      String unit = '';
      if (distMax.unit != null && distMax.unit != defaultDistanceUnit) {
        unit = distMax.unit!.symbol;
      }
      queryparameters = queryparameters.copyWith(
        distMax: '${distMax.value}$unit',
      );
    } else {
      queryparameters = queryparameters.copyWith(distMax: null);
    }
    return queryparameters;
  }

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
