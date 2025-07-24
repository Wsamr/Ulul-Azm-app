// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:final_quran_app/model/SourahModel.dart';

class Sourhastate {}
class SourhaloaddedState extends Sourhastate {
   List<SourahModel> sourhs ;
  SourhaloaddedState({
    required this.sourhs,
  });
}

class SourhaloaddingState extends Sourhastate {
 
}

class SourhaErrorState extends Sourhastate {
  String massage;
  SourhaErrorState({
    required this.massage,
  });
}
class SourInitalState extends Sourhastate{}