import 'package:final_quran_app/model/BookModel.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class Bookcard extends StatelessWidget {
  final BookModel book;
  final count;
  Function () onclick;
  Bookcard({super.key, required this.book, required this.count,required this.onclick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shadowColor: Colors.black,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.chevron_left, color: mainColor, size: 28),

                SizedBox(width: 8),

                Expanded(
                  child: Text(
                    book.title,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: mainTextColor,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),

                SizedBox(width: 10),

                CircleAvatar(
                  backgroundColor: mainColor,
                  radius: 18,
                  child: Text(
                    count,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
