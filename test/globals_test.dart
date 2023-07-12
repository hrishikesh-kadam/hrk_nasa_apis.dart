import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:test/test.dart';

void main() {
  group('dateFormatter', () {
    test('default', () {
      String date = dateFormatter.format(DateTime(2023, 07, 01));
      expect(date, '2023-07-01');
    });
  });

  group('dateTimeFormatter', () {
    test('default', () {
      String dateTime = dateTimeFormatter.format(
        DateTime(2023, 07, 01, 23, 59, 59),
      );
      expect(dateTime, '2023-07-01T23:59:59');
      dateTime = dateTimeFormatter.format(DateTime(2023, 07, 01));
      expect(dateTime, '2023-07-01T00:00:00');
    });
  });
}
