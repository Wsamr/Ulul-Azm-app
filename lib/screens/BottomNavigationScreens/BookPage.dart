import 'package:final_quran_app/Manager/Books/BooksCubit.dart';
import 'package:final_quran_app/Manager/Books/BooksStatus.dart';
import 'package:final_quran_app/constant.dart';
import 'package:final_quran_app/widgets/BookCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bookpage extends StatelessWidget {
  const Bookpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "كتب دينيه",
          style: TextStyle(fontSize: 25, color: colorWhite),
        ),
        centerTitle: true,
        iconTheme:IconThemeData(color: mainColor) ,

      ),
      body: BlocBuilder<Bookscubit, BooksStates>(
        builder: (context, state) {
          if (state is BookLoadedStates) {
            return ListView.builder(
              itemBuilder:
                  (context, index) => Bookcard(
                    book: state.books[index],
                    count: (index + 1).toString(),
                    onclick: () {
                      Navigator.pushNamed(
                        context,
                        "Bookdetails",
                        arguments: {
                          "name": state.books[index].title,
                          "url": state.books[index].url,
                        },
                      );
                    },
                  ),
              itemCount: state.books.length,
            );
          } else if (state is BookErrorStates) {
            return Center(child: Text(state.massege));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
