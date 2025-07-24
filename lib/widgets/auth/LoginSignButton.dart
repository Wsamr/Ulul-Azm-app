
import 'package:flutter/material.dart';

class Loginsignbutton extends StatelessWidget {
   Loginsignbutton({super.key,required this.click});
final  Function () click;
  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: [
            Color(0xff785433),
            Color(0xff946133),
            Color(0xffA96B33),
            Color(0xff755233),
          ],
          stops: [0, .1, .5, 1],
        ),
      ),
      child: ElevatedButton(
        onPressed: click,
        child: Text(
          "تسجيل الدخول",
          style: TextStyle(
            color: Colors.white,
            fontSize: 29,
          ),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(325, 60),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
