import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:test/test.dart';

import '../../../../globals.dart';

void main() {
  group('$SbdbCadBody', () {
    late JsonMap jsonBody;

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
