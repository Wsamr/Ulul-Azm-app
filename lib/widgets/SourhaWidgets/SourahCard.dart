import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/model/SourahModel.dart';
import 'package:flutter/material.dart';


class Sourahcard extends StatelessWidget {
  Sourahcard({super.key, required this.sourahModel,required this.onclick});
  SourahModel sourahModel;
  Function() onclick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 120,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "عدد الآيات",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      Text(
                        sourahModel.Numberofverses,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        sourahModel.arbicName,
                        style: TextStyle(
                            color: mainTextColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        sourahModel.englishName,
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: mainColor,
                    radius: 20,
                    child: Text(
                      sourahModel.number,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
