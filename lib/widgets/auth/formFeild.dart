
import 'package:flutter/material.dart';

class LoginSignField extends StatelessWidget {
   LoginSignField({super.key,required this.text});
   String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            child: TextFormField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: " ادخل $text",
                hintStyle: TextStyle(fontSize: 18),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
