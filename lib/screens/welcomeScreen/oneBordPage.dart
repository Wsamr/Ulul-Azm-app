import 'package:final_quran_app/model/OnbordCardModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../widgets/onBordCard.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  int currentIndex = 0;
  void nextPage() {
    if (currentIndex < on.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      Navigator.pushNamed(context, "Home");
    }
  }

  List<OnbordCardModel> on = [
    OnbordCardModel(
      sub2: " تبقيك متصلاً بالقرآن.",
      sub1: "استلم تذكيرات يومية وآيات ملهمة",
      mainText: "حافظ علي التحفيز",
      image: "assets/35a87ab0c29929ebedc58a53be5c8807.png",
    ),
    OnbordCardModel(
      sub2: "مخصصة لتبقى على المسار.",
      sub1: "ضع أهدافك الخاصة وتلقَّ تذكيرات ",
      mainText: "خطط مخصصة",
      image: "assets/917d9ea33cc06e5f6868270131b9ad3c.png",
    ),
    OnbordCardModel(
      sub2: "وبالوتيرة التي تناسبك.",
      sub1: "ابدأ رحلتك في حفظ القرآن بسهولة",
      mainText: "مرحباً!",
      image: "assets/1cab16b13a2dcae4fbc5a11dde6dd6d1.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          titleWidget: Text(
            "القران الكريم",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          bodyWidget: Onbordcard(onbord: on[currentIndex], onNext: nextPage),
          backgroundImage: on[currentIndex].image!,
        ),
        PageViewModel(
          titleWidget: Text(
            "القران الكريم",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          bodyWidget: Onbordcard(onbord: on[currentIndex], onNext: nextPage),
          backgroundImage: on[currentIndex].image!,
        ),
        PageViewModel(
          titleWidget: Text(
            "القران الكريم",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          bodyWidget: Onbordcard(onbord: on[currentIndex], onNext: nextPage),
          backgroundImage: on[currentIndex].image!,
        ),
      ],
      showSkipButton: false,
      showBackButton: false,
      showDoneButton: false,
      showNextButton: false,
      onDone: () {},
      onSkip: () {
        // On Skip button pressed
      },
      dotsDecorator: DotsDecorator(
        size: const Size.square(15.0),
        activeSize: const Size(35.0, 12.0),
        activeColor: Color(0xffA85000),
        color: Colors.white,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      
    );
  }
}
