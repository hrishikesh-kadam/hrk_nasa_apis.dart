// ignore_for_file: unused_local_variable

import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';
import 'package:hrk_nasa_apis_test/hrk_nasa_apis_test.dart';

void main() async {
  // hrk_nasa_apis_test/lib/src/services/ssd_cneos/sbdb_cad_api/data/sbdb_cad_body/sample/200/0.json
  SbdbCadApi sbdbCadApi = SbdbCadApiExt.getAnswers(
    response: SbdbCadApiExt.getResponseSbdbCadBody('200/0'),
    // delay: const Duration(seconds: 10),
  );

  // With delay
  sbdbCadApi = SbdbCadApiExt.getAnswers(
    response: SbdbCadApiExt.getResponseSbdbCadBody('200/0'),
    delay: const Duration(seconds: 10),
  );

  // sbdbCadApi = SbdbCadApiExt.getThrows(throwable: throwable);

  // hrk_nasa_apis_test/lib/src/services/ssd_cneos/sbdb_cad_api/data/sbdb_cad_body/sample/200/1.json
  String sbdbCadBodyJsonRaw = SbdbCadBodyExt.getSampleJsonRaw('200/1');
  JsonMap sbdbCadBodyJsonMap = SbdbCadBodyExt.getSampleJsonMap('200/1');
  SbdbCadBody sbdbCadBody = SbdbCadBodyExt.getSample('200/1');
}
