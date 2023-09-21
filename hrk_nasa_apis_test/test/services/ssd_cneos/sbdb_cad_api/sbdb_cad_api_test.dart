import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:hrk_nasa_apis_test/hrk_nasa_apis_test.dart';
import 'package:test/test.dart';

void main() {
  group('getMockedSbdbCadApi()', () {
    group('get()', () {
      test('No arguments', () async {
        final sbdbCadApi = getMockedSbdbCadApi(
          getResponse: getMockedResponseSbdbCadBody('200/0'),
        );
        final response = await sbdbCadApi.get();
        expect(response.data, isNotNull);
        expect(response.data!.count, 0);
      });

      test('queryParameters', () async {
        final sbdbCadApi = getMockedSbdbCadApi(
          getResponse: getMockedResponseSbdbCadBody('200/0'),
        );
        final response = await sbdbCadApi.get(
          queryParameters: const SbdbCadQueryParameters().toJson(),
        );
        expect(response.data, isNotNull);
        expect(response.data!.count, 0);
      });

      test('cancelToken', () async {
        final sbdbCadApi = getMockedSbdbCadApi(
          getResponse: getMockedResponseSbdbCadBody('200/0'),
        );
        final response = await sbdbCadApi.get(
          cancelToken: CancelToken(),
        );
        expect(response.data, isNotNull);
        expect(response.data!.count, 0);
      });

      test('other', () async {
        final sbdbCadApi = getMockedSbdbCadApi(
          getResponse: getMockedResponseSbdbCadBody('200/0'),
        );
        final response = await sbdbCadApi.get(
          options: Options(
            sendTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
          ),
          onReceiveProgress: (count, total) {},
        );
        expect(response.data, isNotNull);
        expect(response.data!.count, 0);
      });
    });
  });

  group('getMockedResponseSbdbCadBody()', () {
    test('200/0', () {
      final response = getMockedResponseSbdbCadBody('200/0');
      expect(response.data, isNotNull);
      expect(response.data!.count, 0);
    });

    test('200/1', () {
      final response = getMockedResponseSbdbCadBody('200/1');
      expect(response.data, isNotNull);
      expect(response.data!.count, greaterThan(0));
    });
  });
}
