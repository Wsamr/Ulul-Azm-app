import 'package:final_quran_app/Manager/Sourha/SourahCubit.dart';
import 'package:final_quran_app/model/SourhaDetails.dart';
import 'package:final_quran_app/screens/BookDetails.dart';
import 'package:final_quran_app/screens/Home/AlQuranPage.dart';
import 'package:final_quran_app/screens/Home.dart';
import 'package:final_quran_app/screens/BottomNavigationScreens/HomePage.dart';
import 'package:final_quran_app/screens/KhatabDetails.dart';
import 'package:final_quran_app/screens/Home/ReligionlessonsPage.dart';
import 'package:final_quran_app/screens/SourhaDetails.dart';
import 'package:final_quran_app/screens/Home/SpeechPage.dart';
import 'package:final_quran_app/screens/authenication/Login.dart';
import 'package:final_quran_app/screens/authenication/SignUp.dart';
import 'package:final_quran_app/screens/welcomeScreen/oneBordPage.dart';
import 'package:final_quran_app/services/BooksAPI/BookApi.dart';
import 'package:final_quran_app/services/SourhaApi/SourahApi.dart';
import 'package:final_quran_app/services/SpeachApi/SpeachApi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:audioplayers/audioplayers.dart';

import 'Manager/Books/BooksCubit.dart';

void main() async {
  BookApi h=BookApi();
  h.getBooksApi();
  // Speachapi f = Speachapi();
  // f.getSpeach();
  WidgetsFlutterBinding.ensureInitialized();
  Sourahapi s = Sourahapi();
  s.getSourah();
  print("yes");
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SourhaCubit()..getSouha()),
        BlocProvider(create: (context) => Bookscubit()..getBooks()),
      ],
      child: MaterialApp(
        routes: {
          "Login": (context) => Login(),
          "SignUp": (context) => SignUp(),
          "Home": (context) => Home(),
          "HomePage": (context) => Homepage(),
          "AlQuranpage": (context) => AlQuranpage(),
          "Religionlessonspage": (context) => Religionlessonspage(),
          "Speechpage": (context) => Speechpage(),
          "Sourhadetails": (context) => SourhadetailsPage(),
          "Khatabdetails": (context) => Khatabdetails(),
          "Bookdetails": (context) => Bookdetails(),
        },
        debugShowCheckedModeBanner: false,
        home: One(),
      ),
    );
  }
}
