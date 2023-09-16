// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrk_batteries/hrk_batteries.dart';

import '../../../../../globals.dart';
import 'close_approach_body.dart';
import 'data_output.dart';
import 'small_body_filter.dart';
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

  static DateTime get dateMinDefault => HrkDateTime.today();
  static DateTime get dateMaxDefault =>
      HrkDateTime.today().add(const Duration(days: 60));
  static const DistanceUnit distUnitDefault = DistanceUnit.au;
  static const Distance distMaxDefault = Distance(
    value: 0.05,
    unit: distUnitDefault,
  );
  static const VelocityUnit velocityUnitDefault = VelocityUnit.kmps;
  static const SmallBodyFilter smallBodyFilterDefault = SmallBodyFilter.neo;
  static const CloseApproachBody closeApproachBodyDefault =
      CloseApproachBody.earth;

  SbdbCadQueryParameters copyWithDateRange(DateTime min, DateTime max) {
    SbdbCadQueryParameters queryparameters = this;
    final String minString = dateFormat.format(min);
    if (minString == dateFormat.format(dateMinDefault)) {
      queryparameters = queryparameters.copyWith(dateMin: null);
    } else {
      queryparameters = queryparameters.copyWith(dateMin: minString);
    }
    final String maxString = dateFormat.format(max);
    if (queryparameters.dateMin == null &&
        maxString == dateFormat.format(dateMaxDefault)) {
      queryparameters = queryparameters.copyWith(dateMax: null);
    } else {
      queryparameters = queryparameters.copyWith(dateMax: maxString);
    }
    return queryparameters;
  }

  SbdbCadQueryParameters copyWithDistanceRange(Distance? min, Distance? max) {
    SbdbCadQueryParameters queryparameters = this;
    if (min != null) {
      String unit = '';
      if (min.unit != distUnitDefault) {
        unit = min.unit.symbol;
      }
      queryparameters = queryparameters.copyWith(
        distMin: '${min.value}$unit',
      );
    } else {
      queryparameters = queryparameters.copyWith(distMin: null);
    }
    if (max != null && max != distMaxDefault) {
      String unit = '';
      if (max.unit != distUnitDefault) {
        unit = max.unit.symbol;
      }
      queryparameters = queryparameters.copyWith(
        distMax: '${max.value}$unit',
      );
    } else {
      queryparameters = queryparameters.copyWith(distMax: null);
    }
    return queryparameters;
  }

  SbdbCadQueryParameters copyWithSmallBodyFilter(
    SmallBodyFilter smallBodyFilter, {
    bool? value = true,
  }) {
    return switch (smallBodyFilter) {
      smallBodyFilterDefault => this,
      SmallBodyFilter.pha => copyWith(pha: value),
      SmallBodyFilter.nea => copyWith(nea: value),
      SmallBodyFilter.comet => copyWith(comet: value),
      SmallBodyFilter.neaComet => copyWith(neaComet: value),
    };
  }

  SbdbCadQueryParameters copyWithSmallBodySelector(
    SmallBodySelector smallBodySelector, {
    int? spkId,
    String? desgination,
  }) {
    return switch (smallBodySelector) {
      SmallBodySelector.spkId => copyWith(spk: spkId),
      SmallBodySelector.designation => copyWith(des: desgination),
    };
  }

  SbdbCadQueryParameters copyWithDataOutput(
    Set<DataOutput> dataOutputSet,
  ) {
    SbdbCadQueryParameters queryparameters = this;
    for (final dataOutput in dataOutputSet) {
      queryparameters = switch (dataOutput) {
        DataOutput.totalOnly => queryparameters.copyWith(totalOnly: true),
        DataOutput.diameter => queryparameters.copyWith(diameter: true),
        DataOutput.fullname => queryparameters.copyWith(fullname: true),
      };
    }
    return queryparameters;
  }
}
