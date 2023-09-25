import 'dart:convert';

import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dio/response.dart';

import 'data/sbdb_cad_body/sbdb_cad_body.dart';
@GenerateNiceMocks([MockSpec<SbdbCadApi>()])
import 'sbdb_cad_api.mocks.dart';

export 'data/sbdb_cad_body/sbdb_cad_body.dart';

extension SbdbCadApiExt on SbdbCadApi {
  static String getSampleJsonRaw(String fileName) {
    return switch (fileName) {
      'get/sample/400/0' =>
        '{"code":"400","message":"body not found","moreInfo":"https://ssd-api.jpl.nasa.gov/doc/cad.html"}',
      _ => throw ArgumentError.value(fileName)
    };
  }

  static JsonMap getSampleJsonMap(String fileName) {
    return jsonDecode(getSampleJsonRaw(fileName));
  }

  static SbdbCadApi getAnswers({
    required Response<SbdbCadBody> response,
    Duration delay = Duration.zero,
  }) {
    final SbdbCadApi sbdbCadApi = MockSbdbCadApi();
    when(sbdbCadApi.get(
      queryParameters: anyNamed('queryParameters'),
      options: anyNamed('options'),
      cancelToken: anyNamed('cancelToken'),
      onReceiveProgress: anyNamed('onReceiveProgress'),
    )).thenAnswer((_) async => Future.delayed(delay, () => response));
    return sbdbCadApi;
  }

  static Response<SbdbCadBody> getResponseSbdbCadBody(String fileName) {
    final Response<SbdbCadBody> response = getMockedDioResponse<SbdbCadBody>();
    when(response.statusCode).thenReturn(200);
    when(response.data).thenReturn(SbdbCadBodyExt.getSample(fileName));
    return response;
  }

  static SbdbCadApi getThrows({
    required Object throwable,
  }) {
    final SbdbCadApi sbdbCadApi = MockSbdbCadApi();
    when(sbdbCadApi.get(
      queryParameters: anyNamed('queryParameters'),
      options: anyNamed('options'),
      cancelToken: anyNamed('cancelToken'),
      onReceiveProgress: anyNamed('onReceiveProgress'),
    )).thenThrow(throwable);
    return sbdbCadApi;
  }

  static DioException getBadResponseException({
    required int statusCode,
    required String jsonFileName,
  }) {
    final jsonMap =
        SbdbCadApiExt.getSampleJsonMap('get/sample/$statusCode/$jsonFileName');
    final response = getMockedDioResponse<JsonMap>();
    when(response.statusCode).thenReturn(statusCode);
    when(response.data).thenReturn(jsonMap);
    final dioException = DioException.badResponse(
      statusCode: statusCode,
      requestOptions: RequestOptions(),
      response: response,
    );
    return dioException;
  }
}
