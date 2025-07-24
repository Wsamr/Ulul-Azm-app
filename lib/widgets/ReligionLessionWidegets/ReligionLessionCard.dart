import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/model/ReligionlessonsModel.dart';
import 'package:flutter/material.dart';



class Religionlessioncard extends StatelessWidget {
  Religionlessioncard({super.key, required this.religionlessonsmodel, required this.g});

  final Religionlessonsmodel religionlessonsmodel;
  final List<DropdownMenuItem<String>> g;


  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 180,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                religionlessonsmodel.title,
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              Text(
                religionlessonsmodel.descriotion ?? "لا يوجد وصف",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                maxLines: 2,
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 10),
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  items: g,
                  onChanged: (value) {

                  },
                  hint: Text("اختر درس"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
