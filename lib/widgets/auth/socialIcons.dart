import 'package:flutter/material.dart';

class Socialicons extends StatelessWidget {
   Socialicons({super.key,required this.icon});
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,),
        borderRadius: BorderRadius.circular(50),
      ),
      child: icon,
    );
  }
}
