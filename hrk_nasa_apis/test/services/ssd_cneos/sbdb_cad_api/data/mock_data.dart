import 'package:hrk_nasa_apis/hrk_nasa_apis.dart';

import '../../../../globals.dart';

final JsonMap signatureJson = {
  'version': SbdbCadApi.version,
  'source': 'NASA/JPL SBDB Close Approach Data API',
};

final fieldsList = [
  'des',
  'orbit_id',
  'jd',
  'cd',
  'dist',
  'dist_min',
  'dist_max',
  'v_rel',
  'v_inf',
  't_sigma_f',
  'h'
];

/// https://ssd-api.jpl.nasa.gov/cad.api?des=2023%20HK&date-min=2023-04-20&date-max=2023-04-21
final hk2023Data = [
  hk2023Designation,
  '6',
  '2460054.713522180',
  '2023-Apr-20 05:07',
  '0.00228012069470579',
  '0.00227911946259234',
  '0.0022811219188407',
  '15.925607393468',
  '15.8520608121785',
  '< 00:01',
  '27.19'
];

final JsonMap hk2023DataJson = SbdbCadTransformer.constructSbdbCadDataListJson(
  fieldsList,
  [hk2023Data],
).first;

final SbdbCadData hk2023SbdbCadData =
    SbdbCadTransformer.constructSbdbCadDataList(
  fieldsList,
  [hk2023Data],
).first;

final allFieldsList = [
  'des',
  'orbit_id',
  'jd',
  'cd',
  'dist',
  'dist_min',
  'dist_max',
  'v_rel',
  'v_inf',
  't_sigma_f',
  'body',
  'h',
  'diameter',
  'diameter_sigma',
  'fullname',
];

/// https://ssd-api.jpl.nasa.gov/cad.api?spk=20153814&date-min=2019-08-26&date-max=2019-08-28&dist-max=1&fullname=true&diameter=true
/// https://www.postman.com/hrishikesh-kadam/nasa-open-apis/request/ib168bq/all-fields-sample
final wnFive2001Data = [
  '153814',
  '187',
  '2458722.802000192',
  '2019-Aug-27 07:15',
  '0.0975689265829486',
  '0.0975689109067546',
  '0.0975689422591427',
  '8.34961023858581',
  '8.34633894357542',
  '< 00:01',
  'Earth',
  '18.29',
  '0.932',
  '0.011',
  '153814 (2001 WN5)',
];

final JsonMap wnFive2001DataJson =
    SbdbCadTransformer.constructSbdbCadDataListJson(
  allFieldsList,
  [wnFive2001Data],
).first;

final SbdbCadData wnFive2001SbdbCadData =
    SbdbCadTransformer.constructSbdbCadDataList(
  allFieldsList,
  [wnFive2001Data],
).first;
