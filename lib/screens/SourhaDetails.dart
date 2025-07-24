import 'package:final_quran_app/Manager/SouhaDetails/SouhaDetailsCubit.dart';
import 'package:final_quran_app/Manager/SouhaDetails/SourhaDetailsState.dart';
import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/model/SourhaAudioModel.dart';
import 'package:final_quran_app/services/SourhaApi/SourhaAudioApi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:audioplayers/audioplayers.dart';

class SourhadetailsPage extends StatefulWidget {
  const SourhadetailsPage({super.key});

  @override
  State<SourhadetailsPage> createState() => _SourhadetailsPageState();
}

class _SourhadetailsPageState extends State<SourhadetailsPage> {
  @override
  final player = AudioPlayer();
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await player.setSource(UrlSource(
        "https://d1.islamhouse.com/data/ar/ih_quran/maher-al-muaiqly-king-fahd-complex/ar-001-maher-al-muaiqly-king-fahd-complex.mp3",
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final int? x = int.tryParse(
      ModalRoute.of(context)?.settings.arguments.toString() ?? '',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(x.toString()),
        actions: [
          IconButton(
            onPressed: () async {
              await player.resume();
            },
            icon: Icon(Icons.play_arrow),
          ),
        ],
      ),
      body: BlocProvider(
        create:
            (context) => Souhadetailscubit()..getSourhaDetails(x.toString()),
        child: BlocBuilder<Souhadetailscubit, Sourhadetailsstate>(
          builder: (context, state) {
            if (state is SourhaDetailLoadedState) {
              return ListView.builder(
                itemCount: state.sourhaDetails.length,
                itemBuilder: (context, index) {
                  final surha = state.sourhaDetails[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "${state.sourhaDetails[index].aya}",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Amiri',
                        color: mainTextColor,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  );
                },
              );
            } else if (state is SourhaDetailErrorState) {
              return Center(child: Text(state.massage));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
