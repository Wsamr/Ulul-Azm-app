import 'package:flutter/material.dart';

import '../model/OnbordCardModel.dart';

class Onbordcard extends StatelessWidget {
   Onbordcard({super.key,required this.onbord,required this.onNext});
   OnbordCardModel onbord;
   final VoidCallback onNext;

   @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 280,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
             onbord.mainText,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
           Column(
             children: [
               Text(
                onbord.sub1,
                 style: TextStyle(fontSize: 22, color: Colors.white),
               ),
               Text(
                 onbord.sub2,
                 style: TextStyle(fontSize: 22, color: Colors.white),
               ),
             ],
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "Home");
                  },
                  child: Text("تخطي", style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(fixedSize: Size(150, 40)),
                ),
                ElevatedButton(
                  onPressed: onNext,
                  style: ElevatedButton.styleFrom(fixedSize: Size(150, 40)),
                  child: Text("متابعة", style: TextStyle(fontSize: 22)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
