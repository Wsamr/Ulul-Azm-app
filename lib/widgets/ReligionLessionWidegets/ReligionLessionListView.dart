import 'package:final_quran_app/Manager/Religion%20lessons/ReligionlessonsCubit.dart';
import 'package:final_quran_app/Manager/Religion%20lessons/ReligionlessonsStates.dart';
import 'package:final_quran_app/widgets/ReligionLessionWidegets/ReligionLessionCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Religionlessionlistview extends StatelessWidget {
  const Religionlessionlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Religionlessonscubit()..getReligonLessons(),
      child: BlocBuilder<Religionlessonscubit, Religionlessonsstates>(
        builder: (context, state) {
          if (state is ReligionLessonLoadedState) {
            return ListView.builder(
              itemCount: state.lessons.length,
              itemBuilder: (context, index) {
                var lessons = state.lessons[index];
                List<DropdownMenuItem<String>> dropdownItems =
                    lessons.links.map<DropdownMenuItem<String>>(
                  (link) {
                    return DropdownMenuItem(
                      child: Text(
                          "درس ${lessons.links.indexOf(link) + 1}"),
                      value: link["url"],
                    );
                  },
                ).toList();
                return Religionlessioncard(
                    religionlessonsmodel: lessons, g: dropdownItems);
              },
            );
          } else if (state is ReligionLessonErrorState) {
            return Center(child: Text(state.message));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
