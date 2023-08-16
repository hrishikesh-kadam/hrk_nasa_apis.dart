import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:test/test.dart';

void main() {
  group('dateFormat', () {
    test('default', () {
      String date = dateFormat.format(DateTime(2023, 07, 01));
      expect(date, '2023-07-01');
    });
  });

  group('dateTimeFormat', () {
    test('default', () {
      String dateTime = dateTimeFormat.format(
        DateTime(2023, 07, 01, 23, 59, 59),
      );
      expect(dateTime, '2023-07-01T23:59:59');
      dateTime = dateTimeFormat.format(DateTime(2023, 07, 01));
      expect(dateTime, '2023-07-01T00:00:00');
    });
  });
}
