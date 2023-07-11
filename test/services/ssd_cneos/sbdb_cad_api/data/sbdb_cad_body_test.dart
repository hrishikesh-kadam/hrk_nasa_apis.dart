import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:test/test.dart';

void main() {
  group('$SbdbCadBody', () {
    final JsonMap signatureJson = {
      'version': SbdbCadApi.version,
      'source': 'NASA/JPL SBDB Close Approach Data API',
    };
    JsonMap jsonBody = {};
    final fieldsList = [
      'des',
      'orbit_id',
      'jd',
      'cd',
      'dist',
      'dist_min',
      'dist_max',
      'v_rel',
      'v_inf',
      't_sigma_f',
      'h'
    ];
    final hk2023Data = [
      '2023 HK',
      '6',
      '2460054.713522180',
      '2023-Apr-20 05:07',
      '0.00228012069470579',
      '0.00227911946259234',
      '0.0022811219188407',
      '15.925607393468',
      '15.8520608121785',
      '< 00:01',
      '27.19'
    ];

    setUp(() {
      jsonBody = {};
      jsonBody['signature'] = signatureJson;
    });

    group('fromJson()', () {
      group('200', () {
        test('count == 0', () {
          jsonBody['count'] = 0;
          final sbdbCadBody = SbdbCadBody.fromJson(jsonBody);
          expect(sbdbCadBody.signature.version, SbdbCadApi.version);
          expect(sbdbCadBody.count, 0);
        });

        test('count > 0', () {
          jsonBody['count'] = 1;
          final sbdbCadBody = SbdbCadBody.fromJson(jsonBody);
          expect(sbdbCadBody.count, greaterThan(0));
        });

        /// https://ssd-api.jpl.nasa.gov/cad.api?des=2023%20HK&date-min=2023-04-20&date-max=2023-04-21
        test('data', () {
          jsonBody['count'] = 1;
          jsonBody['fields'] = fieldsList;
          jsonBody['data'] = [hk2023Data];
          final transformedResponse =
              SbdbCadTransformer.transform200Response(jsonBody);
          final sbdbCadBody = SbdbCadBody.fromJson(transformedResponse);
          expect(sbdbCadBody.data!.first.des, hk2023Data.first);
        });

        test('data with raw_body', () {
          jsonBody['count'] = 1;
          jsonBody['fields'] = fieldsList;
          jsonBody['data'] = [hk2023Data];
          final rawBody = JsonMap.from(jsonBody);
          jsonBody['raw_body'] = JsonMap.from(jsonBody);
          final transformedResponse =
              SbdbCadTransformer.transform200Response(jsonBody);
          final sbdbCadBody = SbdbCadBody.fromJson(transformedResponse);
          expect(sbdbCadBody.data!.first.des, hk2023Data.first);
          expect(sbdbCadBody.rawBody, rawBody);
        });
      });
    });
  });
}
