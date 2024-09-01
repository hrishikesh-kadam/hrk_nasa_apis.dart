import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:http/http.dart' as http;
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Link Checker Test', () async {
    final Set<Uri> links = {
      NasaApis.url,
      NasaApis.docUrl,
      SbdbCadApi.docUrl,
    };
    for (final Uri link in links) {
      expect(
        await _getStatusCode(link),
        200,
        reason: 'Failed for $link',
      );
    }
  });
}

Future<int> _getStatusCode(Uri url) async {
  final response = await http.get(url);
  return response.statusCode;
}
