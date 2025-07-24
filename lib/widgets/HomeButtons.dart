import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/model/HomeButtonModel%20.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';


class Homebuttons extends StatelessWidget {
  Homebuttons({
    super.key,
    required this.click,
    required this.buttonData,
  });
  Function() click;
  HomeButtonModel buttonData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: buttonData.onClick,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              buttonData.icon,
              size: 40,
              color: colorWhite,
            ),
          ),
        ),
        Text(
          buttonData.name,
          style: TextStyle(color: mainTextColor, fontSize: 22),
        ),
      ],
    );
  }
}
