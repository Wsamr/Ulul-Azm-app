// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:final_quran_app/model/ReligionlessonsModel.dart';

class Religionlessonsstates {}

class initalReligionLessonState extends Religionlessonsstates {}

class ReligionLessonLoadingState extends Religionlessonsstates {}

class ReligionLessonLoadedState extends Religionlessonsstates {
  List<Religionlessonsmodel> lessons;
  ReligionLessonLoadedState({
    required this.lessons,
  });
}

class ReligionLessonErrorState extends Religionlessonsstates {
  String message;
  ReligionLessonErrorState({
    required this.message,
  });
  
}
