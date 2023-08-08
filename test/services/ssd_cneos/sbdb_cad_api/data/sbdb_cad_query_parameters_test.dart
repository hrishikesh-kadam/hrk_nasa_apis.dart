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
      queryParameters = SbdbCadQueryParameters();
    });

    group('toJson()', () {
      test('empty', () {
        final json = queryParameters.toJson();
        expect(json, isA<JsonMap>());
        expect(json, isEmpty);
      });

      test('non-empty', () {
        final sbdbCadQueryParameters = SbdbCadQueryParameters(dateMin: dateMin);
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
          queryParameters = SbdbCadQueryParameters();
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
