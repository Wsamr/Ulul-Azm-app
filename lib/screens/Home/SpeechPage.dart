import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/widgets/SpeachCard.dart';
import 'package:flutter/material.dart';

class Speechpage extends StatelessWidget {
  const Speechpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "كتب الاحاديث",
          style: TextStyle(color: colorWhite, fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: mainColor,
      ),
        body: Speachcard(),
      
    );
  }
}