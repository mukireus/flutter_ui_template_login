import 'package:flutter/material.dart';
import 'package:flutter_template_login/test.dart';

class HomeList {
  Widget navigateScreen;
  String imagePath;

  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  static List<HomeList> homeList = [
    HomeList(
      imagePath: "assets/images/no_photo.png",
      navigateScreen: Test(),
    ),
  ];
}
