import 'package:flutter/material.dart';
import 'package:flutter_template_login/muz_login.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';

class HomeList {
  Widget navigateScreen;
  String imagePath;

  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  static List<HomeList> homeList = [
    HomeList(
      imagePath: UIHelper.muzPhoto,
      navigateScreen: MuzLogin(),
    ),
  ];
}
