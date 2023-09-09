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
