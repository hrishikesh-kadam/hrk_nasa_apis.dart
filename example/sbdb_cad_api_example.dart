// ignore_for_file: avoid_print

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
      dateMin: dateFormatter.format(DateTime(2023, 7, 1)),
      distMax: const Distance(
        value: 2,
        unit: DistanceUnit.ld,
      ).toCompactString(),
    );
    response = await sbdbCadApi.get(
      queryParameters: queryParameters.toJson(),
    );
  } on Exception catch (e) {
    print(e);
  }
}
