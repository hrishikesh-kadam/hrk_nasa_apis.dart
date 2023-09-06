[![ci](https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml/badge.svg)](https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml)
[![pub package](https://img.shields.io/pub/v/hrk_nasa_apis_test.svg)](https://pub.dev/packages/hrk_nasa_apis_test)

A library containing test and mock data for [hrk_nasa_apis] package.

## Features

- Sample JSON responses, with serialized response

## Getting started

```console
dart pub add hrk_nasa_apis_test
```

## Usage

```dart
import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:hrk_nasa_apis_test/hrk_nasa_apis_test.dart';

void main() async {
  SbdbCadBody sbdbCadBody = SbdbCadBodyExt.getSample('200/1');
}
```

[hrk_nasa_apis]: https://pub.dev/packages/hrk_nasa_apis
