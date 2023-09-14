import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:test/test.dart';

import 'mock_data.dart';

void main() {
  group('$SbdbCadData', () {
    group('fromJson() / toJson()', () {
      void testConverter(SbdbCadData object, JsonMap json) {
        final JsonMap convertedJson = object.toJson();
        expect(convertedJson, json);
        final SbdbCadData roundTripObject = SbdbCadData.fromJson(convertedJson);
        expect(roundTripObject, object);
        final SbdbCadData convertedState = SbdbCadData.fromJson(json);
        expect(convertedState, object);
        final JsonMap roundTripJson = convertedState.toJson();
        expect(roundTripJson, json);
      }

      test('Basic', () {
        testConverter(hk2023SbdbCadData, hk2023DataJson);
      });
    });
  });
}
