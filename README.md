[![ci](https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml/badge.svg)](https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml)
[![codecov](https://codecov.io/gh/hrishikesh-kadam/hrk_nasa_apis.dart/branch/main/graph/badge.svg)](https://codecov.io/gh/hrishikesh-kadam/hrk_nasa_apis.dart)
[![pub package](https://img.shields.io/pub/v/hrk_nasa_apis.svg)](https://pub.dev/packages/hrk_nasa_apis)

A library to integrate [NASA Open APIs][] based on [`dio`][] HTTP client.

## Features

- Based on [`dio`][] HTTP client
- NASA Open APIs implemented
  - [SBDB Close-Approach Data API][]

## Getting started

```console
dart pub add hrk_nasa_apis
```

## Usage

```dart
import 'package:hrk_nasa_apis/nasa_apis.dart';

void main() async {
  final sbdbCadApi = SbdbCadApi();
  try {
    Response<SbdbCadBody> response = await sbdbCadApi.get();
    final sbdbCadBody = response.data!;
    print('count = ${sbdbCadBody.count}');
  } on Exception catch (e) {
    print(e);
  }
}
```


[NASA Open APIs]: https://api.nasa.gov
[`dio`]: https://pub.dev/packages/dio
[SBDB Close-Approach Data API]: https://ssd-api.jpl.nasa.gov/doc/cad.html
