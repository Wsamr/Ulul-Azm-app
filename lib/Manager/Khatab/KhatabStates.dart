// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:final_quran_app/model/KhatabaModel.dart';

class Khatabstates {}

class KhatabInitalStates extends Khatabstates {}

class KhatabLoadedStates extends Khatabstates {
  List<Khatabamodel> khatab;
  KhatabLoadedStates({required this.khatab});
}

class KhatabErrorStates extends Khatabstates {
  String message;
  KhatabErrorStates({
    required this.message,
  });
}

class KhatabLoadingStates extends Khatabstates {}
