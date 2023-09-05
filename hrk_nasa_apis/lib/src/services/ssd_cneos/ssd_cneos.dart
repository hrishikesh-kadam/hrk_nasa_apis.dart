import 'package:dio/dio.dart';
import '../../jpl_nasa.dart';

export 'data/data.dart';
export 'sbdb_cad_api/sbdb_cad_api.dart';

class SsdCneos {
  static final Uri baseUrl = Uri(
    scheme: 'https',
    host: 'ssd-api.${JplNasa.domain}',
  );
  static final BaseOptions dioBaseOptions = BaseOptions(
    baseUrl: baseUrl.toString(),
  );
}
