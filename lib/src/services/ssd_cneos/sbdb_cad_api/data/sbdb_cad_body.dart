import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/signature.dart';
import 'sbdb_cad_data.dart';

part 'sbdb_cad_body.freezed.dart';
part 'sbdb_cad_body.g.dart';

@freezed
class SbdbCadBody with _$SbdbCadBody {
  factory SbdbCadBody.two00({
    required Signature signature,
    required int count,
    required List<SbdbCadData>? data,
  }) = _SbdbCadBody;

  factory SbdbCadBody.fromJson(Map<String, dynamic> json) =>
      _$SbdbCadBodyFromJson(json);
}
