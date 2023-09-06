[![ci](https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml/badge.svg)](https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml)
[![pub package](https://img.shields.io/pub/v/hrk_nasa_apis_test.svg)](https://pub.dev/packages/hrk_nasa_apis_test)

A library containing test and mock data for [hrk_nasa_apis] package.

## Features

- [`getMockedDioResponse()`]
- [`getMockedSbdbCadApi()`]
- [`SbdbCadBodyExt`]
  - `getSampleJsonRaw()`, `getSampleJsonMap()`, `getSample()`

## Getting started

```console
dart pub add hrk_nasa_apis_test
```

## Usage

```dart
import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:hrk_nasa_apis_test/hrk_nasa_apis_test.dart';

void main() async {
  // hrk_nasa_apis_test/lib/src/services/ssd_cneos/sbdb_cad_api/data/sbdb_cad_body/sample/200/0.json
  SbdbCadApi sbdbCadApi = getMockedSbdbCadApi(
    getResponse: getMockedResponseSbdbCadBody('200/0'),
  );

  // hrk_nasa_apis_test/lib/src/services/ssd_cneos/sbdb_cad_api/data/sbdb_cad_body/sample/200/1.json
  String sbdbCadBodyJsonRaw = SbdbCadBodyExt.getSampleJsonRaw('200/1');
  JsonMap sbdbCadBodyJsonMap = SbdbCadBodyExt.getSampleJsonMap('200/1');
  SbdbCadBody sbdbCadBody = SbdbCadBodyExt.getSample('200/1');
}
```


[hrk_nasa_apis]: https://pub.dev/packages/hrk_nasa_apis
[`getMockedDioResponse()`]: lib/src/dio/response.dart
[`getMockedSbdbCadApi()`]: lib/src/services/ssd_cneos/sbdb_cad_api/sbdb_cad_api.dart
[`SbdbCadBodyExt`]: lib/src/services/ssd_cneos/sbdb_cad_api/data/sbdb_cad_body/sbdb_cad_body.dart
