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
  });
}
