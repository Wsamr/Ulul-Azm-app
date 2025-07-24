import 'package:flutter/material.dart';

class Timeprogresswidget  extends StatelessWidget {
  const Timeprogresswidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 3,
            color: Colors.brown,
          ),
          Container(
            height: 40,
            width: 40,
           decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.brown,width: 2),
            
           ),
          )
        ],
      
      ),
    );
  }
}