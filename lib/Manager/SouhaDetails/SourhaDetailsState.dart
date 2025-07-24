// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:final_quran_app/model/SourhaDetails.dart';

class Sourhadetailsstate {}

class SourhaDetailInitalState extends Sourhadetailsstate {}

class SourhaDetailLoadedState extends Sourhadetailsstate {
  List<Sourhadetails> sourhaDetails;
  SourhaDetailLoadedState({
    required this.sourhaDetails,
  });
}

class SourhaDetailLoadingState extends Sourhadetailsstate {}

class SourhaDetailErrorState extends Sourhadetailsstate {
  String massage;
  SourhaDetailErrorState({
    required this.massage,
  });
  
}
