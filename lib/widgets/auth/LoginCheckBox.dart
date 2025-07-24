import 'package:flutter/material.dart';

class Logincheckbox extends StatefulWidget {
  const Logincheckbox({super.key});

  @override
  State<Logincheckbox> createState() => _LogincheckboxState();
}

class _LogincheckboxState extends State<Logincheckbox> {
  bool choise = false;

  @override
  Widget build(BuildContext context) {
    return  Transform.scale(
      scale: 2,
      child: Checkbox(
        side: BorderSide(
          width: .5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        value: choise,
        onChanged: (bool? value) {
          setState(() {
            choise = value!;
          });
        },
      ),
    );
  }
}
