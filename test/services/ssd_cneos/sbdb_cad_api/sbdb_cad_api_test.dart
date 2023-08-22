import 'package:hrk_logging/hrk_logging.dart';
import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('$SbdbCadApi', () {
    late SbdbCadApi api;
    late SbdbCadQueryParameters queryParameters;
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
      queryParameters = const SbdbCadQueryParameters();
    });

    group('get', () {
      group('200', () {
        test('default', () async {
          final Response<SbdbCadBody> response = await api.get();
          expect(response.data, isNotNull);
          final sbdbCadBody = response.data!;
          if (sbdbCadBody.signature.version != SbdbCadApi.version) {
            String message =
                '${SbdbCadApi.displayName} version is now ${sbdbCadBody.signature.version}'
                ', tested on ${SbdbCadApi.version}'
                ', See $docUrl';
            log.warning(message);
          }
          expect(sbdbCadBody.count, greaterThanOrEqualTo(0));
          if (sbdbCadBody.count == 0) {
            expect(sbdbCadBody.data, isNull);
            expect(sbdbCadBody.rawBody!['count'], 0);
          } else {
            expect(sbdbCadBody.data, isNotNull);
            expect(sbdbCadBody.data!.first.fullname, isNull);
            expect(sbdbCadBody.data!.first.body, isNull);
            expect(sbdbCadBody.data!.first.diameter, isNull);
            expect(sbdbCadBody.data!.first.diameterSigma, isNull);
            expect(sbdbCadBody.rawBody!['count'], greaterThan(0));
          }
        });

        test('fullname', () async {
          queryParameters = queryParameters.copyWith(fullname: true);
          final Response<SbdbCadBody> response = await api.get(
            queryParameters: queryParameters.toJson(),
          );
          expect(response.data, isNotNull);
          final sbdbCadBody = response.data!;
          if (sbdbCadBody.count > 0) {
            expect(sbdbCadBody.data!.first.fullname, isNotNull);
          }
        });

        test('body', () async {
          queryParameters = queryParameters.copyWith(
            body: CloseApproachBody.all,
          );
          final Response<SbdbCadBody> response = await api.get(
            queryParameters: queryParameters.toJson(),
          );
          expect(response.data, isNotNull);
          final sbdbCadBody = response.data!;
          if (sbdbCadBody.count > 0) {
            expect(sbdbCadBody.data!.first.body, isNotNull);
          }
        });
      });

      test('$SmallBodyFilter', () async {
        queryParameters =
            queryParameters.copyWithSmallBodyFilter(SmallBodyFilter.pha);
        final Response<SbdbCadBody> response = await api.get(
          queryParameters: queryParameters.toJson(),
        );
        expect(response.data, isNotNull);
      });

      test('400', () async {
        queryParameters = queryParameters.copyWith(
          body: CloseApproachBody.pluto,
        );
        try {
          await api.get(queryParameters: queryParameters.toJson());
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
