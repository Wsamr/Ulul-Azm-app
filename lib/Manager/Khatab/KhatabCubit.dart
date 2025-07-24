import 'package:final_quran_app/Manager/Khatab/KhatabStates.dart';
import 'package:final_quran_app/model/KhatabaModel.dart';
import 'package:final_quran_app/services/KhatabApi/KhatabApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Khatabcubit extends Cubit<Khatabstates> {
  Khatabcubit() : super(KhatabInitalStates());

  getKhatab() async {
    Khatabapi khatabapi = Khatabapi();
    emit(KhatabLoadingStates());
    var json =await khatabapi.getKhatab();
      List<Khatabamodel> k = [];
    try {
     
      for (var i in json["data"]) {
        k.add(Khatabamodel(title: i["title"], description: i["description"],url: i["attachments"][0]["url"]));
      }
      emit(KhatabLoadedStates(khatab: k));
    } on Exception catch (erroe) {
      emit(KhatabErrorStates(message: erroe.toString()));
    }
  }
}
