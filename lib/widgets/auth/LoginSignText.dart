import 'package:final_quran_app/constant.dart';
import 'package:flutter/material.dart';

class Loginsigntext extends StatelessWidget {
  const Loginsigntext({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "العزم",
          style: TextStyle(
            color: mainTextColor,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "اولي",
          style: TextStyle(
            color: Color(0xff522700),
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
