import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ssd_cneos.dart';

export 'data/data.dart';
export 'sbdb_cad_transformer.dart';

/// https://www.postman.com/hrishikesh-kadam/workspace/nasa-open-apis/collection/2540023-c2b59b2b-8b9c-40da-81c0-10f725fec38a
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

  static final Uri url = Uri(
    scheme: SsdCneos.baseUrl.scheme,
    host: SsdCneos.baseUrl.host,
    path: 'cad.api',
  );
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

  @visibleForTesting
  Future<Response<SbdbCadBody>> four04() async {
    return await _dio.get('/cad.ap');
  }
}
