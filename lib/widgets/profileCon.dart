import 'package:flutter/material.dart';

class Profilecon extends StatelessWidget {
  const Profilecon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios),

          Row(children: [Text("تعديل الملف الشخصي"),
            SizedBox(width: 10,),
            Icon(Icons.edit)]),
        ],
      ),
    );
  }
}
