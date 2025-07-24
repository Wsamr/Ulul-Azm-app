import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/widgets/profileCon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("الملف الشخصي", style: TextStyle(fontSize: 20)),
          SizedBox(height: 50),
          CircleAvatar(radius: 80,
            backgroundImage: NetworkImage("https://tse2.mm.bing.net/th?id=OIP.pT3Y7U8gH9hdjNgNQx438gHaIA&pid=Api&P=0&h=220"),
          ),
          SizedBox(height: 30),
          Text(
            "وسام رضا ابو العز الدين",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: mainColor,
            ),
          ),
          SizedBox(height: 50),
          Padding(padding: const EdgeInsets.all(16.0), child: Profilecon()),
          Padding(padding: const EdgeInsets.all(16.0), child: Profilecon()),
          Padding(padding: const EdgeInsets.all(16.0), child: Profilecon()),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "Login");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_forward),
                Text("تسجيل الدخول", style: TextStyle(fontSize: 21)),
              ],
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(220, 50),
              backgroundColor: mainColor,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
