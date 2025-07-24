import 'package:dio/dio.dart';

class Religionlessonsapi {
  final dio = Dio();
  getReligionlessons() async {
    var response = await dio.get("http://api3.islamhouse.com/v3/paV29H2gm56kvLPy/main/videos/ar/ar/1/25/json");
    return response.data;
  }
}
