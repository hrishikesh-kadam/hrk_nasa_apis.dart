import 'package:dio/dio.dart';
import 'package:hrk_nasa_apis/nasa_apis.dart';

void main() async {
  final sbdbCadApi = SbdbCadApi();
  try {
    Response<SbdbCadBody> response = await sbdbCadApi.get();
    final sbdbCadBody = response.data!;
    print('count = ${sbdbCadBody.count}');
  } on Exception catch (e) {
    print(e);
  }
}
