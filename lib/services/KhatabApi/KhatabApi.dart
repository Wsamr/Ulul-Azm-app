import 'package:dio/dio.dart';

class Khatabapi {
  final dio = Dio();
 Future<Map<String,dynamic>> getKhatab() async {
    var response = await dio.get("https://api3.islamhouse.com/v3/paV29H2gm56kvLPy/main/khotab/ar/ar/1/25/json");
    return response.data;
  }
}
