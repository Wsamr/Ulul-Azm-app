import 'package:dio/dio.dart';
import 'package:final_quran_app/model/SourhaAudioModel.dart';

class Sourhaaudioapi {
  final dio = Dio();
  getSourhaAudio() async {
    var response = await dio.get(
      "https://api3.islamhouse.com/v3/paV29H2gm56kvLPy/quran/get-recitation/728787/ar/json",
    );
    var json = response.data;
    List<Sourhaaudiomodel> audio = [];
    for (var i in json["attachments"]) {
      audio.add(Sourhaaudiomodel(order: i["order"], Url: i["url"]));
    }
    return audio;
  }
}
