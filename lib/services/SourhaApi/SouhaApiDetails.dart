import 'package:dio/dio.dart';

class Souhaapidetails {
  final dio = Dio();
 Future<Map<String, dynamic>> getSouhaDetails(String number) async {
    var response =await dio.get("http://api.alquran.cloud/v1/surah/$number");
    return response.data;
  }
}
