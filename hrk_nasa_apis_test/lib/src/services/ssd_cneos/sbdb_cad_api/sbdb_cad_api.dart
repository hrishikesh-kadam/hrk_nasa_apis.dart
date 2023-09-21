import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dio/response.dart';

import 'data/sbdb_cad_body/sbdb_cad_body.dart';
@GenerateNiceMocks([MockSpec<SbdbCadApi>()])
import 'sbdb_cad_api.mocks.dart';

export 'data/sbdb_cad_body/sbdb_cad_body.dart';

SbdbCadApi getMockedSbdbCadApi({
  Response<SbdbCadBody>? getResponse,
}) {
  final SbdbCadApi sbdbCadApi = MockSbdbCadApi();
  // https://github.com/dart-lang/mockito#named-arguments
  when(sbdbCadApi.get(
    queryParameters: anyNamed('queryParameters'),
    options: anyNamed('options'),
    cancelToken: anyNamed('cancelToken'),
    onReceiveProgress: anyNamed('onReceiveProgress'),
  )).thenAnswer((_) async => Future.value(getResponse));
  return sbdbCadApi;
}

Response<SbdbCadBody> getMockedResponseSbdbCadBody(String fileName) {
  final Response<SbdbCadBody> response = getMockedDioResponse<SbdbCadBody>();
  when(response.data).thenReturn(SbdbCadBodyExt.getSample(fileName));
  return response;
}
