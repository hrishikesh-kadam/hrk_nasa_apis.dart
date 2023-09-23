[![ci][ci-badge]][ci-link]
[![hrk_nasa_apis_test pub package link][pub-badge-hrk_nasa_apis_test]][pub-link-hrk_nasa_apis_test]
[![codecov badge hrk_nasa_apis_test][codecov-badge-hrk_nasa_apis_test]][codecov-link-hrk_nasa_apis]

A library containing test and mock data for [hrk_nasa_apis][pub-link-hrk_nasa_apis] package.

## Features

- [`getMockedDioResponse()`]
- [`SbdbCadApiExt`]
- [`SbdbCadBodyExt`]

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
  SbdbCadApi sbdbCadApi = SbdbCadApiExt.getAnswers(
    response: SbdbCadApiExt.getResponseSbdbCadBody('200/0'),
    // delay: const Duration(seconds: 10),
  );

  // With delay
  sbdbCadApi = SbdbCadApiExt.getAnswers(
    response: SbdbCadApiExt.getResponseSbdbCadBody('200/0'),
    delay: const Duration(seconds: 10),
  );

  // sbdbCadApi = SbdbCadApiExt.getThrows(throwable: throwable);

  // hrk_nasa_apis_test/lib/src/services/ssd_cneos/sbdb_cad_api/data/sbdb_cad_body/sample/200/1.json
  String sbdbCadBodyJsonRaw = SbdbCadBodyExt.getSampleJsonRaw('200/1');
  JsonMap sbdbCadBodyJsonMap = SbdbCadBodyExt.getSampleJsonMap('200/1');
  SbdbCadBody sbdbCadBody = SbdbCadBodyExt.getSample('200/1');
}
```


[ci-badge]: https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml/badge.svg
[ci-link]: https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml
[pub-badge-hrk_nasa_apis_test]: https://img.shields.io/pub/v/hrk_nasa_apis_test.svg
[pub-link-hrk_nasa_apis_test]: https://pub.dev/packages/hrk_nasa_apis_test
[codecov-badge-hrk_nasa_apis_test]: https://codecov.io/gh/hrishikesh-kadam/hrk_nasa_apis.dart/branch/main/graph/badge.svg?flag=hrk_nasa_apis_test
[codecov-link-hrk_nasa_apis]: https://codecov.io/gh/hrishikesh-kadam/hrk_nasa_apis.dart
[pub-link-hrk_nasa_apis]: https://pub.dev/packages/hrk_nasa_apis
[`getMockedDioResponse()`]: https://pub.dev/documentation/hrk_nasa_apis_test/latest/hrk_nasa_apis_test/getMockedDioResponse.html
[`SbdbCadApiExt`]: https://pub.dev/documentation/hrk_nasa_apis_test/latest/hrk_nasa_apis_test/SbdbCadApiExt.html
[`SbdbCadBodyExt`]: https://pub.dev/documentation/hrk_nasa_apis_test/latest/hrk_nasa_apis_test/SbdbCadBodyExt.html
