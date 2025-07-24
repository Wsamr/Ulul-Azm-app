import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/model/KhatabaModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Kahatabcard extends StatelessWidget {
  Kahatabcard({super.key, required this.khatabamodel,required this.click});
  Khatabamodel khatabamodel;
  Function() click;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: 180,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  khatabamodel.title,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 18,
                    color: mainTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  khatabamodel.description,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: click,
                  child: Text("قراءه الخطبه", style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainTextColor,
                    foregroundColor: colorWhite,
                    fixedSize: Size(180, 50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
