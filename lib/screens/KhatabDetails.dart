import 'package:final_quran_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Khatabdetails extends StatelessWidget {
   Khatabdetails({super.key});

  @override
  Widget build(BuildContext context) {
    String pdf=ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
     body:Padding(
       padding: const EdgeInsets.all(16.0),
       child: Center(
         child: Container(

           child:  SfPdfViewer.network( "$pdf"),
         ),
       ),
     ),
    );
  }
}
