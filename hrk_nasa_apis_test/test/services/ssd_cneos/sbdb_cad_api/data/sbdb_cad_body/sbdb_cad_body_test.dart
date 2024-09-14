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

    group('getSample()', () {
      test('200/0', () {
        final sbdbCadBody = SbdbCadBodyExt.getSample('200/0');
        expect(sbdbCadBody.count, 0);
        expect(sbdbCadBody.total, null);
        expect(sbdbCadBody.data, null);
      });

      test('200/total-only', () {
        final sbdbCadBody = SbdbCadBodyExt.getSample('200/total-only');
        expect(sbdbCadBody.count, 0);
        expect(sbdbCadBody.total, greaterThanOrEqualTo(0));
        expect(sbdbCadBody.data, null);
      });

      test('200/total-only-zero', () {
        final sbdbCadBody = SbdbCadBodyExt.getSample('200/total-only-zero');
        expect(sbdbCadBody.count, 0);
        expect(sbdbCadBody.total, 0);
        expect(sbdbCadBody.data, null);
      });

      test('200/1', () {
        final sbdbCadBody = SbdbCadBodyExt.getSample('200/1');
        expect(sbdbCadBody.count, greaterThan(0));
        expect(sbdbCadBody.total, null);
        expect(sbdbCadBody.fields, isNotEmpty);
        expect(sbdbCadBody.data, isNotNull);
        expect(sbdbCadBody.data!.length, greaterThan(0));
        expect(
          sbdbCadBody.data!.every((element) => element.body == null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.diameter == null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.diameterSigma == null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.fullname == null),
          true,
        );
      });

      test('200/body', () {
        final sbdbCadBody = SbdbCadBodyExt.getSample('200/body');
        expect(sbdbCadBody.count, greaterThan(0));
        expect(sbdbCadBody.total, null);
        expect(sbdbCadBody.fields, isNotEmpty);
        expect(sbdbCadBody.data, isNotNull);
        expect(sbdbCadBody.data!.length, greaterThan(0));
        expect(
          sbdbCadBody.data!.every((element) => element.body != null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.diameter == null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.diameterSigma == null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.fullname == null),
          true,
        );
      });

      test('200/diameter', () {
        final sbdbCadBody = SbdbCadBodyExt.getSample('200/diameter');
        expect(sbdbCadBody.count, greaterThan(0));
        expect(sbdbCadBody.total, null);
        expect(sbdbCadBody.fields, isNotEmpty);
        expect(sbdbCadBody.data, isNotNull);
        expect(sbdbCadBody.data!.length, greaterThan(0));
        expect(
          sbdbCadBody.data!.every((element) => element.body == null),
          true,
        );
        expect(
          sbdbCadBody.data!.any((element) => element.diameter != null),
          true,
        );
        expect(
          sbdbCadBody.data!.any((element) => element.diameterSigma != null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.fullname == null),
          true,
        );
      });

      test('200/fullname', () {
        final sbdbCadBody = SbdbCadBodyExt.getSample('200/fullname');
        expect(sbdbCadBody.count, greaterThan(0));
        expect(sbdbCadBody.total, null);
        expect(sbdbCadBody.fields, isNotEmpty);
        expect(sbdbCadBody.data, isNotNull);
        expect(sbdbCadBody.data!.length, greaterThan(0));
        expect(
          sbdbCadBody.data!.every((element) => element.body == null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.diameter == null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.diameterSigma == null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.fullname != null),
          true,
        );
      });

      test('200/all-fields', () {
        final sbdbCadBody = SbdbCadBodyExt.getSample('200/all-fields');
        expect(sbdbCadBody.count, greaterThan(0));
        expect(sbdbCadBody.total, null);
        expect(sbdbCadBody.fields, isNotEmpty);
        expect(sbdbCadBody.data, isNotNull);
        expect(sbdbCadBody.data!.length, greaterThan(0));
        expect(
          sbdbCadBody.data!.every((element) => element.body != null),
          true,
        );
        expect(
          sbdbCadBody.data!.every((element) => element.fullname != null),
          true,
        );
      });
    });
  });
}
