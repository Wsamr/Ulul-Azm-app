import 'package:final_quran_app/Manager/Khatab/KhatabCubit.dart';
import 'package:final_quran_app/Manager/Khatab/KhatabStates.dart';
import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/widgets/KahatabCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Khatabpage extends StatelessWidget {
  const Khatabpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("خطب", style: TextStyle(color: colorWhite, fontSize: 26)),
        backgroundColor: mainColor,
        centerTitle: true,
        iconTheme:IconThemeData(color: mainColor) ,
      ),
      body: BlocProvider(
        create: (context) => Khatabcubit()..getKhatab(),
        child: BlocBuilder<Khatabcubit, Khatabstates>(
          builder: (context, state) {
            if (state is KhatabLoadedStates) {
              return ListView.builder(
                itemBuilder:
                    (context, index) => Kahatabcard(
                      khatabamodel: state.khatab[index],
                      click: () {
                        Navigator.pushNamed(
                          context,
                          "Khatabdetails",
                          arguments: state.khatab[index].url,
                        );
                      },
                    ),
                itemCount: state.khatab.length,
              );
            } else if (state is KhatabErrorStates) {
              return Center(child: Text(state.message));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
