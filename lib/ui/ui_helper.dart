import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  // STRING
  static final String createAccount = "Create\nAccount";
  static final String welcomeBack = "Welcome\nBack";
  static final String name = "Name";
  static final String email = "Email";
  static final String password = "Password";
  static final String signIn = "SIGN IN";
  static final String signUp = "SIGN UP";
  static final String forgetPassword = "Forget Password?";
  static final String loginSpotify = "LOG IN WITH SPOTIFY ";
  static final String emailRequired = "Email is required";
  static final String passwordRequired = "Password is required";

  // IMAGES
  static final String muzPhoto = "assets/images/muz_login.png";
  static final String noPhoto = "assets/images/no_photo.png";

  // MUZ LOGIN COLORS
  static const Color MUZ_PRIMARY_COLOR = Color(0XFF3C67F7);
  static const Color MUZ_BACKGROUND_COLOR = Color(0xFFF2F3F8);
  static const Color MUZ_SHADOW = Color(0x70000000);
  static const Color MUZ_BUTTONSHADOW = Color(0x403C67F7);
  static const Color MUZ_TEXT_COLOR = Color(0xFF5A7BB5);

  // GLOBAL COLORS
  static const Color SPOTIFY_COLOR = Color(0xFF1DB954);
  static const Color SPOTIFY_TEXT_COLOR = Color(0xFFF4F6FC);
  static const Color SPOTIFY_SHADOW = Color(0x401DB954);
  static const Color WHITE = Colors.white;
  static const Color THEME_PRIMARY = Color(0XFF575C79);
  static const Color THEME_LIGHT = Color(0XFF8489A8);
  static const Color THEME_DARK = Color(0XFF2D334D);
  static const Color BACKGROUND_COLOR = Color(0XFFAEB2D1);

  // SPACE
  static dynamicHeight(double height) => ScreenUtil.instance.setHeight(height);
  static dynamicWidth(double width) => ScreenUtil.instance.setWidth(width);
  static dynamicSp(double fontsize) => ScreenUtil.instance.setSp(fontsize);
}
