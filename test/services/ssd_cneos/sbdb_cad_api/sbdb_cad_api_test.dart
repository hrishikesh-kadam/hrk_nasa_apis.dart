import 'package:dio/dio.dart';
import 'package:hrk_logging/hrk_logging.dart';
import 'package:hrk_nasa_apis/nasa_apis.dart';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('SbdbCadApi', () {
    late SbdbCadApi api;
    late Logger log;
    final Uri docUrl = Uri(
      scheme: SsdCneos.baseUrl.scheme,
      host: SsdCneos.baseUrl.host,
      path: 'doc/cad.html',
    );

    setUpAll(() {
      configureHrkLogging();
      log = Logger('$SbdbCadApi.Test')..level = Level.ALL;
    });

    setUp(() {
      api = SbdbCadApi();
    });

    group('get', () {
      group('200', () {
        test('default', () async {
          Response<SbdbCadBody> response = await api.get();
          expect(response.data, isNotNull);
          final sbdbCadBody = response.data!;
          if (sbdbCadBody.signature.version != SbdbCadApi.version) {
            String message =
                '${SbdbCadApi.displayName} version is now ${sbdbCadBody.signature.version}'
                ', tested on ${SbdbCadApi.version}'
                ', See $docUrl';
            log.warning(message);
          }
          if (sbdbCadBody.count <= 0) {
            expect(sbdbCadBody.data, isNull);
          } else {
            expect(sbdbCadBody.data, isNotNull);
            expect(sbdbCadBody.data!.first.fullname, isNull);
            expect(sbdbCadBody.data!.first.body, isNull);
            expect(sbdbCadBody.data!.first.diameter, isNull);
            expect(sbdbCadBody.data!.first.diameterSigma, isNull);
          }
        });

        test('fullname', () async {
          Response<SbdbCadBody> response = await api.get(
            queryParameters: {
              'fullname': true,
            },
          );
          expect(response.data, isNotNull);
          final sbdbCadBody = response.data!;
          if (sbdbCadBody.count > 0) {
            expect(sbdbCadBody.data!.first.fullname, isNotNull);
          }
        });

        test('body', () async {
          Response<SbdbCadBody> response = await api.get(
            queryParameters: {
              'body': 'ALL',
            },
          );
          expect(response.data, isNotNull);
          final sbdbCadBody = response.data!;
          if (sbdbCadBody.count > 0) {
            expect(sbdbCadBody.data!.first.body, isNotNull);
          }
        });
      });

      test('400', () async {
        try {
          await api.get(
            queryParameters: {
              'body': 'Pandora',
            },
          );
        } on DioException catch (e) {
          expect(e.response, isNotNull);
          expect(e.response!.statusCode, 400);
        }
      });

      test('404', () async {
        try {
          await api.four04();
        } on DioException catch (e) {
          expect(e.response, isNotNull);
          expect(e.response!.statusCode, 404);
        }
      });
    });
  });
}
