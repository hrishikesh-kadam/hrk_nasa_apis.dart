import 'package:dio/dio.dart';
import '../../jpl_nasa.dart';

export 'data/data.dart';
export 'sbdb_cad_api/sbdb_cad_api.dart';

class SsdCneos {
  static final Uri url = Uri.https('ssd-api.${JplNasa.url.authority}');
  static final BaseOptions dioBaseOptions = BaseOptions(
    baseUrl: url.toString(),
  );
}
