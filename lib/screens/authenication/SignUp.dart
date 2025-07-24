import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/widgets/auth/CardLoginSign.dart';
import 'package:final_quran_app/widgets/auth/LoginCheckBox.dart';
import 'package:final_quran_app/widgets/auth/LoginSignButton.dart';
import 'package:final_quran_app/widgets/auth/LoginSignText.dart';
import 'package:final_quran_app/widgets/auth/formFeild.dart';
import 'package:final_quran_app/widgets/auth/socialIcons.dart';
import 'package:flutter/material.dart';

import 'package:icons_plus/icons_plus.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool choise = false;
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
              LoginSignField(text: "البريد الالكتروني"),
              LoginSignField(text: "كلمة المرور"),
              LoginSignField(text: "تأكيد كلمة المرور"),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              "سياسة  ",
                              style:
                                  TextStyle(color: mainTextColor, fontSize: 15),
                            ),
                            Text(
                              "المنصة و ",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 15),
                            ),
                            Text(
                              "شروط خدمة ",
                              style:
                                  TextStyle(color: mainTextColor, fontSize: 15),
                            ),
                            Text(
                              "أوافق على ",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 15),
                            ),
                          ],
                        ),
                        Text(
                          "الخصوصية",
                          style: TextStyle(color: mainTextColor, fontSize: 15),
                        ),
                      ],
                    ),
                    Logincheckbox(),
                  ],
                ),
              ),
              Loginsignbutton(
                click: () {
                  Navigator.pushNamed(context, "Login");
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "خيارات تسجيل الدخول الأخرى",
                style: TextStyle(
                  fontSize: 18,
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
                      radius: 33,
                      backgroundColor: Colors.white,
                      child: Text(
                        "f",
                        style:
                            TextStyle(color: Color(0xff3C5A99), fontSize: 30),
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
                    size: 25,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Socialicons(
                      icon: Icon(
                    BoxIcons.bxl_apple,
                    size: 25,
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
