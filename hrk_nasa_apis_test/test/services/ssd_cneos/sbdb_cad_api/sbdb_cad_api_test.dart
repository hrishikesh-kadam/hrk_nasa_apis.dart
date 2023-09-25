import 'package:fake_async/fake_async.dart';
import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:hrk_nasa_apis_test/hrk_nasa_apis_test.dart';
import 'package:test/test.dart';

void main() {
  group('SbdbCadApiExt', () {
    group('getAnswers()', () {
      test('No arguments', () async {
        final expectedResponse = SbdbCadApiExt.getResponseSbdbCadBody('200/0');
        final sbdbCadApi = SbdbCadApiExt.getAnswers(response: expectedResponse);
        final actualResponse = await sbdbCadApi.get();
        expect(actualResponse, expectedResponse);
      });

      test('queryParameters', () async {
        final expectedResponse = SbdbCadApiExt.getResponseSbdbCadBody('200/0');
        final sbdbCadApi = SbdbCadApiExt.getAnswers(response: expectedResponse);
        final actualResponse = await sbdbCadApi.get(
          queryParameters: const SbdbCadQueryParameters().toJson(),
        );
        expect(actualResponse, expectedResponse);
      });

      test('cancelToken', () async {
        final expectedResponse = SbdbCadApiExt.getResponseSbdbCadBody('200/0');
        final sbdbCadApi = SbdbCadApiExt.getAnswers(response: expectedResponse);
        final actualResponse = await sbdbCadApi.get(cancelToken: CancelToken());
        expect(actualResponse, expectedResponse);
      });

      test('other', () async {
        final expectedResponse = SbdbCadApiExt.getResponseSbdbCadBody('200/0');
        final sbdbCadApi = SbdbCadApiExt.getAnswers(response: expectedResponse);
        final actualResponse = await sbdbCadApi.get(
          options: Options(
            sendTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
          ),
          onReceiveProgress: (count, total) {},
        );
        expect(actualResponse, expectedResponse);
      });

      test('delay', () async {
        fakeAsync((async) async {
          const delay = Duration(seconds: 10);
          final expectedResponse =
              SbdbCadApiExt.getResponseSbdbCadBody('200/0');
          final sbdbCadApi = SbdbCadApiExt.getAnswers(
            response: expectedResponse,
            delay: delay,
          );
          final actualResponse = await sbdbCadApi.get();
          async.elapse(delay);
          expect(actualResponse, expectedResponse);
        });
      });
    });

    group('getBadResponseException()', () {
      test('400', () {
        const int statusCodeInt = 400;
        final dioException = SbdbCadApiExt.getBadResponseException(
          statusCode: statusCodeInt,
          jsonFileName: '0',
        );
        expect(dioException.type, DioExceptionType.badResponse);
        expect(dioException.response, isNotNull);
        expect(dioException.response!.statusCode, statusCodeInt);
      });
    });

    group('getThrows()', () {
      test('${DioExceptionType.badResponse} 400', () async {
        final expectedException = SbdbCadApiExt.getBadResponseException(
          statusCode: 400,
          jsonFileName: '0',
        );
        final sbdbCadApi = SbdbCadApiExt.getThrows(
          throwable: expectedException,
        );
        await expectLater(sbdbCadApi.get, throwsA(expectedException));
      });
    });

    group('getResponseSbdbCadBody()', () {
      test('200/0', () {
        final response = SbdbCadApiExt.getResponseSbdbCadBody('200/0');
        expect(response.data, isNotNull);
        expect(response.data!.count, 0);
      });

      test('200/1', () {
        final response = SbdbCadApiExt.getResponseSbdbCadBody('200/1');
        expect(response.data, isNotNull);
        expect(response.data!.count, greaterThan(0));
      });
    });

    group('getSampleJsonRaw()', () {
      test('throwsArgumentError', () {
        expect(
          () => SbdbCadApiExt.getSampleJsonRaw(''),
          throwsArgumentError,
        );
      });
    });
  });
}
