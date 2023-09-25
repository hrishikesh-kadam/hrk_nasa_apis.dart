import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:hrk_nasa_apis_test/hrk_nasa_apis_test.dart';
import 'package:test/test.dart';

void main() {
  group('$SbdbCadBody', () {
    group('getSampleJsonRaw()', () {
      test('throwsArgumentError', () {
        expect(
          () => SbdbCadBodyExt.getSampleJsonRaw(''),
          throwsArgumentError,
        );
      });
    });
  });
}
