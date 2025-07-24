import 'package:dio/dio.dart';

class Speachapi {
  final dio = Dio();

  Future<Map<String, dynamic>> getSpeach() async {
    var response = await dio.get(
      'https://hadithapi.com/public/api/hadiths?apiKey=\$2y\$10\$AVo6OSi6Rqks6lAJoFtsPudKMufGRGzsXAjNHfaFRaMhN30NYLCe',
    );
    print(response.data);
    return response.data;
  }
}
