import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
      final json = transform200Response(transformedResponseBody as JsonMap);
      return SbdbCadBody.fromJson(json);
    }
    return transformedResponseBody;
  }

  static JsonMap transform200Response(JsonMap json) {
    json['raw_body'] = JsonMap.from(json);
    if (json['count'] <= 0) {
      return json;
    }
    return transformSbdbCadDataList(json);
  }

  static JsonMap transformSbdbCadDataList(JsonMap json) {
    final transformedJson = JsonMap.from(json);
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

  @visibleForTesting
  static List<JsonMap> constructSbdbCadDataListJson(
    List<String> fieldsList,
    List<List<dynamic>> dataList,
  ) {
    final JsonMap json = {};
    json['fields'] = fieldsList;
    json['data'] = dataList;
    final JsonMap transformedJson = transformSbdbCadDataList(json);
    return transformedJson['data'];
  }

  @visibleForTesting
  static List<SbdbCadData> constructSbdbCadDataList(
    List<String> fieldsList,
    List<List<dynamic>> dataList,
  ) {
    List<JsonMap> dataListJson = constructSbdbCadDataListJson(
      fieldsList,
      dataList,
    );
    List<SbdbCadData> sbdbCadDataList = [];
    for (final dataJson in dataListJson) {
      sbdbCadDataList.add(SbdbCadData.fromJson(dataJson));
    }
    return sbdbCadDataList;
  }
}
