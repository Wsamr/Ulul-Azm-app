import 'package:final_quran_app/model/HomeButtonModel%20.dart';
import 'package:final_quran_app/widgets/HomeButtons.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  List<HomeButtonModel> b = [];

  @override
  Widget build(BuildContext context) {
    b = [
      HomeButtonModel(
          name: "التقويم",
          icon: Clarity.date_line,
          onClick: () {
            Navigator.pushNamed(context, "AlQuranpage");
          }),
      HomeButtonModel(
          name: "دروس دين",
          icon: FontAwesome.person_praying_solid,
          onClick: () {
            Navigator.pushNamed(context, "Religionlessonspage");
          }),
      HomeButtonModel(
          name: "حديث",
          icon: Symbols.collections_bookmark,
          onClick: () {
            Navigator.pushNamed(context, "Speechpage");
          }),
      HomeButtonModel(
          name: "قرآن",
          icon: Symbols.book_ribbon_rounded,
          onClick: () {
            Navigator.pushNamed(context, "AlQuranpage");
          }),
    ];
    return Scaffold(
       
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://s3-alpha-sig.figma.com/img/fe27/905a/2b794f56df5156839592f157d100b6d9?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=tn8hxNxb1HcaLv9~Utgx8Y8RG4luhbXw~RqRT0UVAHI3~I-RSFZ~4at9sksmGHGcD3wiAyaMMvV5bsxFE3-ZPdRnml7hf3fV9KAurXc6iH09uUJ4u3q9zqp4OpTt7doyyBFAXpqgnl1qxiWMMn2EoaXooqa7BBBRsAYDqHqeQYLyoNb10Q~Mly~GUv7bH3MZfjr45n-cOG3XOPQVotU8wYMbrfbeLmWgGJNev7ViShaTC1PecL7azo82yu9eZWGrsZ8JCDS0tez-oW2g3XjYFgkxrUO-H~twLDvrraRsV~dxheXxGjUPnlIIcJNI9u~WPh3mYUwsUq371Jh0gvn3gw__",
              height: 300,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Homebuttons(
                  click: () {},
                  buttonData: b[0],
                ),
                Homebuttons(
                  click: () {},
                  buttonData: b[1],
                ),
                Homebuttons(
                  click: () {},
                  buttonData: b[2],
                ),
                Homebuttons(
                  click: () {},
                  buttonData: b[3],
                ),
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/89da/6f6b/0712c56fcc78059e9b5484b751e257f8?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=WR61T3h71DKCsAk~4jNVk80--NNwP8dV3F5hHffCO10Mfcb409EROgdXK2x~DdvOouPUK-QMBlJURkKP1rkdkn0kTf1xd7Jvv5UjzOm0oJbCB8FmJSwxwDj1UFZ4FhE7THCfBVEDqnjO1DI4Xdkq0MqNYytWsFZV6ujjCPIFGDrM3ALShBceRWbMVcHxa2wxYj5Hf4nI-Kpy~NZCIKl9gQUmLstL6XggMHm3BoojQWPl8PCWJNodsVUkHZvs0NjsaVNacDg4Xh-isK6h5n-SEF1mIMmXDXw6hlyOTLyIdh3crfz0chARx6fHonu3dmG~GZYhpRJHH~faoFShhOUyVQ__",
                    height: 200,
                    width: 400,
                    fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            )
        ],
        ),
      ),
    );
  }
}
