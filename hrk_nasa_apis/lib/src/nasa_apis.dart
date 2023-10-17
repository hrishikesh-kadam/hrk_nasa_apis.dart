import 'nasa.dart';

export 'globals.dart';
export 'jpl_nasa.dart';
export 'nasa.dart';
export 'services/services.dart';

class NasaApis {
  static final Uri url = Uri.https('api.${Nasa.url.authority}');
  static final Uri docUrl = url;
}
