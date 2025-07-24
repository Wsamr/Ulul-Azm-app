import 'package:dio/dio.dart';

class Sourahapi {
  final dio = Dio();
  Future<Map<String, dynamic>> getSourah() async {
    var response = await dio.get("http://api.alquran.cloud/v1/surah");
    return response.data;
  }
}
