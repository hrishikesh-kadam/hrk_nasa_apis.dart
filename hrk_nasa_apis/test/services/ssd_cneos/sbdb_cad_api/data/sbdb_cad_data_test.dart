import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:test/test.dart';

import 'mock_data.dart';

void main() {
  group('$SbdbCadData', () {
    group('fromJson()', () {
      test('cd', () {
        expect(
          hk2023SbdbCadData.cd,
          calendarDateFormat.parse(hk2023DataJson['cd']),
        );
      });
    });

    group('toJson()', () {
      test('cd', () {
        expect(
          hk2023SbdbCadData.toJson()['cd'],
          hk2023DataJson['cd'],
        );
      });
    });
  });
}
