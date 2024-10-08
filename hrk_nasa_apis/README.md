[![ci][ci-badge]][ci-link]
[![hrk_nasa_apis pub package link][pub-badge-hrk_nasa_apis]][pub-link-hrk_nasa_apis]
[![codecov badge hrk_nasa_apis][codecov-badge-hrk_nasa_apis]][codecov-link-hrk_nasa_apis]

A library to integrate [NASA Open APIs] based on [dio] HTTP client.

## Features

- Based on [dio] HTTP client
- NASA Open APIs implemented
  - [SBDB Close-Approach Data API]
- Preserves original JSON Body
- Refer my [Postman Public Workspace] for convenience

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
    SbdbCadQueryParameters queryParameters = SbdbCadQueryParameters(
      distMax: const Distance(
        value: 10,
        unit: DistanceUnit.LD,
      ).toCompactString(),
      pha: true,
      fullname: true,
    );

    // copyWith example
    queryParameters = queryParameters.copyWithDateRange(
      DateTime(2023, 7, 1),
      DateTime(2023, 7, 31),
    );

    response = await sbdbCadApi.get(
      queryParameters: queryParameters.toJson(),
    );
  } on Exception catch (e) {
    print(e);
  }
}
```

[ci-badge]: https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml/badge.svg
[ci-link]: https://github.com/hrishikesh-kadam/hrk_nasa_apis.dart/actions/workflows/ci.yaml
[pub-badge-hrk_nasa_apis]: https://img.shields.io/pub/v/hrk_nasa_apis.svg
[pub-link-hrk_nasa_apis]: https://pub.dev/packages/hrk_nasa_apis
[codecov-badge-hrk_nasa_apis]: https://codecov.io/gh/hrishikesh-kadam/hrk_nasa_apis.dart/branch/main/graph/badge.svg?flag=hrk_nasa_apis
[codecov-link-hrk_nasa_apis]: https://codecov.io/gh/hrishikesh-kadam/hrk_nasa_apis.dart
[NASA Open APIs]: https://api.nasa.gov
[dio]: https://pub.dev/packages/dio
[SBDB Close-Approach Data API]: https://ssd-api.jpl.nasa.gov/doc/cad.html
[Postman Public Workspace]: https://www.postman.com/hrishikesh-kadam/nasa-open-apis
