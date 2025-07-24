import 'package:final_quran_app/model/SpeachModel.dart';

class SpeachStates {}

class SpeachInitalState extends SpeachStates {}

class SpeachLoadedState extends SpeachStates {
  List<SpeachModel> sourhaDetails;
  SpeachLoadedState({
    required this.sourhaDetails,
  });
}

class SpeachLoadingState extends SpeachStates {}

class SpeachErrorState extends SpeachStates {
  String massage;
  SpeachErrorState({
    required this.massage,
  });
  
}
