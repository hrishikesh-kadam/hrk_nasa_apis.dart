import 'package:dio/dio.dart';
import 'package:hrk_batteries/hrk_batteries.dart';

import 'data/data.dart';

class SbdbCadTransformer extends BackgroundTransformer {
  @override
  Future<dynamic> transformResponse(
    RequestOptions options,
    ResponseBody responseBody,
  ) async {
    final transformedResponseBody = await super.transformResponse(
      options,
      responseBody,
    );
    if (responseBody.statusCode.is2xx()) {
      transformedResponseBody['raw_body'] =
          JsonMap.from(transformedResponseBody);
      final json = transform200Response(transformedResponseBody as JsonMap);
      return SbdbCadBody.fromJson(json);
    }
    return transformedResponseBody;
  }

  static JsonMap transform200Response(JsonMap json) {
    if (json['count'] <= 0) {
      return json;
    }
    final transformedJson = JsonMap.from(json);
    transformedJson.remove('fields');
    transformedJson.remove('data');
    transformedJson['data'] = <JsonMap>[];
    List<dynamic> fields = json['fields'];
    List<dynamic> dataList = json['data'];

    for (int i = 0; i < dataList.length; i++) {
      List<dynamic> data = dataList[i];
      JsonMap dataMap = {};
      for (int j = 0; j < data.length; j++) {
        dataMap[fields[j]] = data[j];
      }
      List<JsonMap> transformedDataList = transformedJson['data'];
      transformedDataList.add(dataMap);
    }
    return transformedJson;
  }
}
