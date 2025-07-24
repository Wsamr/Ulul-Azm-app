import 'package:final_quran_app/Manager/SouhaDetails/SourhaDetailsState.dart';
import 'package:final_quran_app/model/SourhaDetails.dart';
import 'package:final_quran_app/services/SourhaApi/SouhaApiDetails.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Souhadetailscubit extends Cubit<Sourhadetailsstate> {
  Souhadetailscubit() : super(SourhaDetailInitalState());

  Souhaapidetails sourha = Souhaapidetails();

  Future<void> getSourhaDetails(String number) async {
    emit(SourhaDetailLoadingState());
    List<Sourhadetails> sourhaDetail = [];

    try {
      var json = await sourha.getSouhaDetails(number);
        for (var i in json["data"]["ayahs"]) {
          sourhaDetail.add(Sourhadetails(number: i["numberInSurah"].toString(), aya: i["text"]));
        }
        emit(SourhaDetailLoadedState(sourhaDetails: sourhaDetail));

    } catch (error) {
      emit(SourhaDetailErrorState(massage: error.toString()));
    }
  }
}
