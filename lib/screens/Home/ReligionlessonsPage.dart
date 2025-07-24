import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/widgets/ReligionLessionWidegets/ReligionLessionListView.dart';
import 'package:flutter/material.dart';
import 'package:web_video_player/web_video_player.dart';
import 'package:video_player/video_player.dart';
class Religionlessonspage extends StatefulWidget {
  const Religionlessonspage({super.key});

  @override
  State<Religionlessonspage> createState() => _ReligionlessonspageState();
}

class _ReligionlessonspageState extends State<Religionlessonspage> {
  @override
  Widget build(BuildContext context) {
    final controller = VideoPlayerController.network( "https://d1.islamhouse.com/data/ar/ih_videos/mp4/single/ar-tahfez.mp4");
    final playerWidget = WebVideoPlayer( videoController: controller, );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " دروس الدين",
          style: TextStyle(color: colorWhite, fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: mainColor,
      ),
      body: Religionlessionlistview(),
    );
  }
}
