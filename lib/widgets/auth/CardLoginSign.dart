
import 'package:flutter/material.dart';

class Cardloginsign extends StatefulWidget {
   Cardloginsign({super.key});

  @override
  State<Cardloginsign> createState() => _CardloginsignState();
}

class _CardloginsignState extends State<Cardloginsign> {
   Color colorSign=Color(0xffEDEEEF);

   Color colorLogin=Color(0xffEDEEEF);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xffEDEEEF),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "SignUp");
                setState(() {
                  colorSign=Colors.white;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: colorSign,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "إنشاء حساب",
                  style: TextStyle(fontSize: 18, color: Color(0xffA85000)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, "Login");

              },
              child: Container(
                color: colorLogin,
                child: Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
