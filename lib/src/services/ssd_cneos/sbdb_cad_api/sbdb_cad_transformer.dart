import 'package:dio/dio.dart';
import 'package:hrk_batteries/hrk_batteries.dart';

import 'data/data.dart';

class SbdbCadTransformer extends BackgroundTransformer {
  @override
  Future<dynamic> transformResponse(
    RequestOptions options,
    ResponseBody response,
  ) async {
    final transformedResponse = await super.transformResponse(
      options,
      response,
    );
    if (response.statusCode.is2xx()) {
      final json = transform200Response(transformedResponse as JsonMap);
      return SbdbCadBody.fromJson(json);
    }
    return transformedResponse;
  }

  JsonMap transform200Response(JsonMap json) {
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
