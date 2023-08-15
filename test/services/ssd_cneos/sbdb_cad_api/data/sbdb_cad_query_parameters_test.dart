import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:test/test.dart';

import '../../../../globals.dart';

void main() {
  group('$SbdbCadQueryParameters', () {
    late SbdbCadQueryParameters queryParameters;
    const dateMin = packageInception;
    const spkId = hk2023SpkId;
    const designation = hk2023Designation;

    setUp(() {
      queryParameters = const SbdbCadQueryParameters();
    });

    group('toJson()', () {
      test('empty', () {
        final json = queryParameters.toJson();
        expect(json, isA<JsonMap>());
        expect(json, isEmpty);
      });

      test('non-empty', () {
        const sbdbCadQueryParameters = SbdbCadQueryParameters(dateMin: dateMin);
        final json = sbdbCadQueryParameters.toJson();
        expect(json, isNotEmpty);
        expect(json['date-min'], dateMin);
      });
    });

    group('fromJson()', () {
      test('empty', () {
        final sbdbCadQueryParameters = SbdbCadQueryParameters.fromJson({});
        expect(sbdbCadQueryParameters.dateMin, isNull);
      });

      test('non-empty', () {
        final json = {
          'date-min': dateMin,
        };
        final sbdbCadQueryParameters = SbdbCadQueryParameters.fromJson(json);
        expect(sbdbCadQueryParameters.dateMin, dateMin);
      });
    });

    group('copyWith$DistanceRange()', () {
      const defaultUnit = SbdbCadQueryParameters.defaultDistanceUnit;
      final nonDefaultUnit = DistanceUnit.values.firstWhere(
        (unit) => unit != SbdbCadQueryParameters.defaultDistanceUnit,
      );

      test('null value and unit', () {
        const distanceRange = DistanceRange();
        queryParameters = queryParameters.copyWithDistanceRange(distanceRange);
        expect(queryParameters.distMin, null);
        expect(queryParameters.distMax, null);
      });

      test('null value', () {
        final distMin = Distance(unit: nonDefaultUnit);
        final distMax = Distance(unit: nonDefaultUnit);
        final distanceRange = DistanceRange(start: distMin, end: distMax);
        queryParameters = queryParameters.copyWithDistanceRange(distanceRange);
        expect(queryParameters.distMin, null);
        expect(queryParameters.distMax, null);
      });

      test('null unit', () {
        const distMin = Distance(value: 1);
        const distMax = Distance(value: 2);
        const distanceRange = DistanceRange(start: distMin, end: distMax);
        queryParameters = queryParameters.copyWithDistanceRange(distanceRange);
        expect(queryParameters.distMin, distMin.value.toString());
        expect(queryParameters.distMax, distMax.value.toString());
      });

      test('defaultUnit', () {
        const distMin = Distance(value: 1, unit: defaultUnit);
        const distMax = Distance(value: 2, unit: defaultUnit);
        const distanceRange = DistanceRange(start: distMin, end: distMax);
        queryParameters = queryParameters.copyWithDistanceRange(distanceRange);
        expect(queryParameters.distMin, distMin.value.toString());
        expect(queryParameters.distMax, distMax.value.toString());
      });

      test('nonDefaultUnit', () {
        final distMin = Distance(value: 1, unit: nonDefaultUnit);
        final distMax = Distance(value: 2, unit: nonDefaultUnit);
        final distanceRange = DistanceRange(start: distMin, end: distMax);
        queryParameters = queryParameters.copyWithDistanceRange(distanceRange);
        expect(queryParameters.distMin, distMin.toCompactString());
        expect(queryParameters.distMax, distMax.toCompactString());
      });
    });

    group('copyWith$SmallBody()', () {
      test('All', () {
        for (final smallBody in SmallBody.values) {
          queryParameters = queryParameters.copyWithSmallBody(smallBody);
          if (smallBody == SbdbCadQueryParameters.defaultSmallBody) {
            expectSmallBody(smallBody, null, queryParameters);
          } else {
            expectSmallBody(smallBody, true, queryParameters);
          }
          bool? value = false;
          queryParameters = queryParameters.copyWithSmallBody(
            smallBody,
            value: value,
          );
          if (smallBody == SbdbCadQueryParameters.defaultSmallBody) {
            expectSmallBody(smallBody, null, queryParameters);
          } else {
            expectSmallBody(smallBody, value, queryParameters);
          }
          value = null;
          queryParameters = queryParameters.copyWithSmallBody(
            smallBody,
            value: value,
          );
          expectSmallBody(smallBody, null, queryParameters);
        }
      });
    });

    group('copyWith$SmallBodySelector()', () {
      test(SmallBodySelector.spkId.name, () {
        queryParameters = queryParameters.copyWithSmallBodySelector(
          SmallBodySelector.spkId,
          spkId: spkId,
        );
        expect(queryParameters.spk, spkId);
        expect(queryParameters.des, null);
      });

      test(SmallBodySelector.designation.name, () {
        queryParameters = queryParameters.copyWithSmallBodySelector(
          SmallBodySelector.designation,
          desgination: designation,
        );
        expect(queryParameters.des, designation);
        expect(queryParameters.spk, null);
      });

      test('All', () {
        queryParameters = queryParameters.copyWithSmallBodySelector(
          SmallBodySelector.spkId,
          spkId: spkId,
          desgination: designation,
        );
        expect(queryParameters.spk, spkId);
        expect(queryParameters.des, null);
      });
    });

    group('copyWith$DataOutput()', () {
      test('All', () {
        final dataOutputSetList = [
          {DataOutput.totalOnly},
          {DataOutput.diameter},
          {DataOutput.fullname},
          {DataOutput.diameter, DataOutput.fullname},
          // API does return 200
          {DataOutput.totalOnly, DataOutput.diameter, DataOutput.fullname},
        ];
        for (final dataOutputSet in dataOutputSetList) {
          queryParameters = const SbdbCadQueryParameters();
          queryParameters = queryParameters.copyWithDataOutput(dataOutputSet);
          for (final dataOutput in DataOutput.values) {
            switch (dataOutput) {
              case DataOutput.totalOnly:
                expect(queryParameters.totalOnly,
                    dataOutputSet.contains(dataOutput) ? true : null);
              case DataOutput.diameter:
                expect(queryParameters.diameter,
                    dataOutputSet.contains(dataOutput) ? true : null);
              case DataOutput.fullname:
                expect(queryParameters.fullname,
                    dataOutputSet.contains(dataOutput) ? true : null);
            }
          }
        }
      });
    });
  });
}

expectSmallBody(
  SmallBody smallBody,
  bool? expected,
  SbdbCadQueryParameters queryParameters,
) {
  switch (smallBody) {
    case SmallBody.pha:
      expect(queryParameters.pha, expected);
    case SmallBody.nea:
      expect(queryParameters.nea, expected);
    case SmallBody.comet:
      expect(queryParameters.comet, expected);
    case SmallBody.neaComet:
      expect(queryParameters.neaComet, expected);
    case SmallBody.neo:
      expect(queryParameters.neo, expected);
  }
}
