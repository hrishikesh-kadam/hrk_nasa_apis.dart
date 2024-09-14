import 'package:dio/dio.dart';

import '../ssd_cneos.dart';

export 'data/data.dart';
export 'sbdb_cad_transformer.dart';

/// https://www.postman.com/hrishikesh-kadam/nasa-open-apis/collection/glw3vt8/sbdb-close-approach-data-api
class SbdbCadApi {
  SbdbCadApi({
    Dio? dio,
  }) {
    _dio = dio ?? getDefaultDio();
  }

  static Dio getDefaultDio() {
    return Dio()
      ..options = SsdCneos.dioBaseOptions
      ..transformer = SbdbCadTransformer();
  }

  static final Uri url = Uri.https(SsdCneos.url.authority, 'cad.api');
  static final Uri docUrl = Uri.https(SsdCneos.url.authority, 'doc/cad.html');
  static const String displayName = 'SBDB Close-Approach Data API';
  static const String version = '1.5';
  late final Dio _dio;

  Future<Response<SbdbCadBody>> get({
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    return await _dio.get(
      '/${url.path}',
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
