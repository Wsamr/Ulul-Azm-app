import 'package:final_quran_app/Manager/Religion%20lessons/ReligionlessonsStates.dart';
import 'package:final_quran_app/model/ReligionlessonsModel.dart';
import 'package:final_quran_app/services/ReligionlessonsApi/ReligionlessonsApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Religionlessonscubit extends Cubit<Religionlessonsstates> {
  Religionlessonscubit() : super(initalReligionLessonState());
  Religionlessonsapi religionlessonsapi = Religionlessonsapi();
  getReligonLessons() async {
    emit(ReligionLessonLoadingState());
    List<Religionlessonsmodel> lessions = [];
    int i = 0;
    var json = await religionlessonsapi.getReligionlessons();
    try {
      for (var i in json['data']) {
        lessions.add(Religionlessonsmodel(
            title: i["title"],
            descriotion: i["description"],
            links: i["attachments"]));
      }
      emit(ReligionLessonLoadedState(lessons: lessions));
    } on Exception catch (error) {
      emit(ReligionLessonErrorState(message: error.toString()));
    }
  }
}
