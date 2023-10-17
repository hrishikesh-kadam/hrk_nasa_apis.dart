import 'nasa_apis.dart';

class JplNasa {
  static final Uri url = Uri.https('jpl.${Nasa.url.authority}');
}
