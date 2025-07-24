import 'package:flutter/material.dart';

class HomeButtonModel {
  final String name;
  final IconData icon;
  final Function() onClick;

  HomeButtonModel({
    required this.name,
    required this.icon,
    required this.onClick,
  });
}
