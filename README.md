[![ci](https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml/badge.svg)](https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml)
[![codecov](https://codecov.io/gh/hrishikesh-kadam/hrk_nasa_apis.dart/branch/main/graph/badge.svg)](https://codecov.io/gh/hrishikesh-kadam/hrk_nasa_apis.dart)
[![pub package](https://img.shields.io/pub/v/hrk_nasa_apis.svg)](https://pub.dev/packages/hrk_nasa_apis)

A library to integrate [NASA Open APIs][] based on [`dio`][] HTTP client.

## Features

- Based on [`dio`][] HTTP client
- NASA Open APIs implemented
  - [SBDB Close-Approach Data API][]
- Preserves original JSON Body

## Getting started

```console
dart pub add hrk_nasa_apis
```

## Usage

```dart
import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';

void main() async {
  final sbdbCadApi = SbdbCadApi();
  try {
    // default example
    Response<SbdbCadBody> response = await sbdbCadApi.get();
    SbdbCadBody sbdbCadBody = response.data!;
    print('count = ${sbdbCadBody.count}');

    // If new fields are added in the upcoming versions of the API then
    // consumers won't have to wait till the release of new version of this
    // client library
    print('count from rawBody = ${sbdbCadBody.rawBody!['count']}');

    // queryParameters example
    SbdbCadQueryParameters queryParameters = SbdbCadQueryParameters();
    queryParameters.dateMin = '2023-07-01';
    response = await sbdbCadApi.get(
      queryParameters: queryParameters.toJson(),
    );
  } on Exception catch (e) {
    print(e);
  }
}

```


[NASA Open APIs]: https://api.nasa.gov
[`dio`]: https://pub.dev/packages/dio
[SBDB Close-Approach Data API]: https://ssd-api.jpl.nasa.gov/doc/cad.html
