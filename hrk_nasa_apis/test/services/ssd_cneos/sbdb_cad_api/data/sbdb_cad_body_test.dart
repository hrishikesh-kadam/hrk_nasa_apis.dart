import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:test/test.dart';

import 'mock_data.dart';

void main() {
  group('$SbdbCadBody', () {
    late JsonMap jsonBody;

    setUp(() {
      jsonBody = {};
      jsonBody['signature'] = signatureJson;
    });

    group('fromJson()', () {
      group('200', () {
        setUp(() {
          jsonBody['count'] = 0;
        });

        test('count == 0', () {
          final sbdbCadBody = SbdbCadBody.fromJson(jsonBody);
          expect(sbdbCadBody.signature.version, SbdbCadApi.version);
          expect(sbdbCadBody.count, 0);
        });

        test('count > 0', () {
          jsonBody['count'] = 1;
          final sbdbCadBody = SbdbCadBody.fromJson(jsonBody);
          expect(sbdbCadBody.count, greaterThan(0));
        });

        test('data', () {
          jsonBody['count'] = 1;
          jsonBody['fields'] = fieldsList;
          jsonBody['data'] = [hk2023Data];
          final transformedResponse =
              SbdbCadTransformer.transform200Response(jsonBody);
          final sbdbCadBody = SbdbCadBody.fromJson(transformedResponse);
          expect(sbdbCadBody.fields, fieldsList);
          expect(sbdbCadBody.data!.first.des, hk2023Data.first);
        });

        test('data with raw_body', () {
          jsonBody['count'] = 1;
          jsonBody['fields'] = fieldsList;
          jsonBody['data'] = [hk2023Data];
          final rawBody = JsonMap.from(jsonBody);
          // jsonBody['raw_body'] = JsonMap.from(jsonBody);
          final transformedResponse =
              SbdbCadTransformer.transform200Response(jsonBody);
          final sbdbCadBody = SbdbCadBody.fromJson(transformedResponse);
          expect(sbdbCadBody.fields, fieldsList);
          expect(sbdbCadBody.data!.first.des, hk2023Data.first);
          expect(sbdbCadBody.rawBody, rawBody);
        });

        test('total > 0', () {
          jsonBody['total'] = 1;
          final sbdbCadBody = SbdbCadBody.fromJson(jsonBody);
          expect(sbdbCadBody.total, greaterThan(0));
          expect(sbdbCadBody.count, 0);
        });
      });
    });
  });
}
