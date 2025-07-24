import 'package:final_quran_app/constant.dart';
import 'package:flutter/material.dart';

class Speachcard extends StatelessWidget {
  const Speachcard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
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
                        "عدد الاحاديث",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Text(
                        "888",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                       "xcvbnkml;'",
                        style: TextStyle(
                            color: mainTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "sourahModel.englishName",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: mainColor,
                    radius: 20,
                    child: Text(
                      "1",
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