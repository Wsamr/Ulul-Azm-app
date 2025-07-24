import 'package:final_quran_app/Manager/Sourha/SourahCubit.dart';
import 'package:final_quran_app/Manager/Sourha/SourhaState.dart';
import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/widgets/SourhaWidgets/SourahCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:audioplayers/audioplayers.dart';

class AlQuranpage extends StatelessWidget {
   AlQuranpage({super.key});
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "السور",
            style: TextStyle(color: colorWhite, fontSize: 28),
          ),
          centerTitle: true,
          backgroundColor: mainColor,
        ),
        body: BlocBuilder<SourhaCubit, Sourhastate>(
          builder: (context, state) {
            if (state is SourhaloaddedState) {
              return ListView.builder(
                itemBuilder: (context, index) => Sourahcard(
                  sourahModel: state.sourhs[index],
                  onclick: () {
                    Navigator.pushNamed(context, "Sourhadetails",arguments: state.sourhs[index].number);
                  },
                ),
                itemCount: state.sourhs.length,
              );
            } else if (state is SourhaErrorState) {
              return Text("Error ${state.massage}");
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
