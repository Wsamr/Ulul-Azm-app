import 'package:final_quran_app/Manager/Sourha/SourhaState.dart';
import 'package:final_quran_app/model/SourahModel.dart';
import 'package:final_quran_app/services/SourhaApi/SourahApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SourhaCubit extends Cubit<Sourhastate> {
  SourhaCubit() : super(SourInitalState());
  Sourahapi souha = Sourahapi();
  getSouha() async {
    emit(SourhaloaddingState());
    var json = await souha.getSourah();
    List<SourahModel> sourhs = [];
    try {
      for (var i in json['data']) {
        sourhs.add(SourahModel(
            number: i["number"].toString(),
            arbicName: i["name"],
            englishName: i["englishName"],
            Numberofverses: i["numberOfAyahs"].toString()));
      }
      emit(SourhaloaddedState(sourhs: sourhs));
    } on Exception catch (error) {
      emit(SourhaErrorState(massage: error.toString()));
    }
  }
}
