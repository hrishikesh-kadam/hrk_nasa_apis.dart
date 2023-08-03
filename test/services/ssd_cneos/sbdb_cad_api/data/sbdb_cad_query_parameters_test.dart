import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:test/test.dart';

void main() {
  group('$SbdbCadQueryParameters', () {
    const dateMin = '2023-07-01';
    group('toJson()', () {
      test('empty', () {
        final queryParameters = SbdbCadQueryParameters().toJson();
        expect(queryParameters, isA<JsonMap>());
        expect(queryParameters, isEmpty);
      });

      test('non-empty', () {
        final sbdbCadQueryParameters = SbdbCadQueryParameters(dateMin: dateMin);
        final queryParameters = sbdbCadQueryParameters.toJson();
        expect(queryParameters, isNotEmpty);
        expect(queryParameters['date-min'], dateMin);
      });
    });

    group('fromJson()', () {
      test('empty', () {
        final sbdbCadQueryParameters = SbdbCadQueryParameters.fromJson({});
        expect(sbdbCadQueryParameters.dateMin, isNull);
      });

      test('non-empty', () {
        final queryParameters = {
          'date-min': dateMin,
        };
        final sbdbCadQueryParameters =
            SbdbCadQueryParameters.fromJson(queryParameters);
        expect(sbdbCadQueryParameters.dateMin, dateMin);
      });
    });

    group('copyWithSmallBody()', () {
      late SbdbCadQueryParameters queryParameters;

      setUp(() {
        queryParameters = SbdbCadQueryParameters();
      });

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
