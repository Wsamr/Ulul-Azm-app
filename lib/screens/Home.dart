import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/screens/BottomNavigationScreens/BookPage.dart';
import 'package:final_quran_app/screens/BottomNavigationScreens/HomePage.dart';
import 'package:final_quran_app/screens/BottomNavigationScreens/KhatabPage.dart';
import 'package:final_quran_app/screens/BottomNavigationScreens/SettingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   int i=0;

   List<Widget> screens=[
    Homepage(),
    Khatabpage(),
    Bookpage(),
    Settingpage(),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
         onTap: (value) {
          setState(() {
            i=value;
          });
        },
        backgroundColor: Colors.white,
        color: mainColor,
       items: const [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.mosque, size: 30, color: Colors.white),
          Icon(Icons.book_sharp, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
        ],
      ),
      body:screens[i] ,
    );
  }
}