
import 'package:dio/dio.dart';

class BookApi{
  final dio=Dio();
 Future<Map<String,dynamic>> getBooksApi()async
  {
    var response=await dio.get("http://api3.islamhouse.com/v3/paV29H2gm56kvLPy/main/books/ar/ar/1/25/json");
    return response.data;
  }

}