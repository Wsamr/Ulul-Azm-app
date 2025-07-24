import 'package:final_quran_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Bookdetails extends StatelessWidget {
  const Bookdetails({super.key});
  @override
  Widget build(BuildContext context) {
    Map<String, String> book =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text("${book["name"]}", style: TextStyle(color: Colors.white)),
        backgroundColor: mainColor,
        iconTheme:IconThemeData(color: Colors.white) ,
      ),
      body: SfPdfViewer.network("${book["url"]}"),
    );
  }
}
