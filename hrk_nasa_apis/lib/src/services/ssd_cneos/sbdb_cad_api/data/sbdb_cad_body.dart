import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrk_batteries/hrk_batteries.dart';
import '../../data/signature.dart';
import 'sbdb_cad_data.dart';

part 'sbdb_cad_body.freezed.dart';
part 'sbdb_cad_body.g.dart';

@freezed
class SbdbCadBody with _$SbdbCadBody {
  const factory SbdbCadBody.two00({
    required Signature signature,
    required int count,
    List<SbdbCadData>? data,
    int? total,
    required JsonMap? rawBody,
  }) = _SbdbCadBody;

  factory SbdbCadBody.fromJson(Map<String, dynamic> json) =>
      _$SbdbCadBodyFromJson(json);

  static const Map<String, String> fieldMap = _$$SbdbCadBodyImplFieldMap;
}
