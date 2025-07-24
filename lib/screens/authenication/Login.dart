import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/widgets/auth/CardLoginSign.dart';
import 'package:final_quran_app/widgets/auth/LoginSignButton.dart';
import 'package:final_quran_app/widgets/auth/LoginSignText.dart';
import 'package:final_quran_app/widgets/auth/formFeild.dart';
import 'package:final_quran_app/widgets/auth/socialIcons.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Loginsigntext(),
              SizedBox(
                height: 10,
              ),
              Text(
                "قم بتسجيل الدخول أو إنشاء حساب جدبد ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black45,
                ),
              ),
              Text(
                "لحفظ تقدمك",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black45,
                ),
              ),
              Cardloginsign(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginSignField(text: "البريد الالكتروني"),
                  LoginSignField(text: "كلمة المرور"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "نسيت كلمة المرور؟",
                      style: TextStyle(
                        color: mainTextColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Loginsignbutton(click: () {
                Navigator.pushNamed(context, "Home");
              }),
              SizedBox(
                height: 30,
              ),
              Text(
                "خيارات تسجيل الدخول الأخرى",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: Text(
                        "f",
                        style:
                            TextStyle(color: Color(0xff3C5A99), fontSize: 40),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Socialicons(
                      icon: Icon(
                    Bootstrap.google,
                    color: Colors.red,
                    size: 30,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Socialicons(
                      icon: Icon(
                    BoxIcons.bxl_apple,
                    size: 30,
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
