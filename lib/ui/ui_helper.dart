import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  // STRING
  static final String createAccount = "Create\nAccount";
  static final String welcomeBack = "Welcome\nBack";
  static final String name = "Name";
  static final String email = "Email address";
  static final String username = "Username";
  static final String password = "Password";
  static final String login = "Login";
  static final String signIn = "SIGN IN";
  static final String signUp = "SIGN UP";
  static final String signInLower = "Sign In";
  static final String signUpLower = "Sign Up";
  static final String forgetPassword = "Forget Password?";
  static final String loginSpotify = "LOG IN WITH SPOTIFY ";
  static final String emailRequired = "Email is required";
  static final String passwordRequired = "Password is required";
  static final String dontHaveAnAccount = "Don't have an account?";

  // IMAGES
  static final String muzPhoto = "assets/images/muz_login.png";
  static final String grapePhoto = "assets/images/grape_login.png";
  static final String strawberryPhoto = "assets/images/strawberry_login.png";
  static final String blueberryPhoto = "assets/images/blueberry.png";
  static final String noPhoto = "assets/images/no_photo.png";

  // MUZ LOGIN COLORS
  static const Color MUZ_PRIMARY_COLOR = Color(0XFF3C67F7);
  static const Color MUZ_BACKGROUND_COLOR = Color(0xFFF2F3F8);
  static const Color MUZ_SHADOW = Color(0x70000000);
  static const Color MUZ_BUTTONSHADOW = Color(0x403C67F7);
  static const Color MUZ_TEXT_COLOR = Color(0xFF5A7BB5);

  // STRAWBERRY LOGIN COLORS
  static const Color STRAWBERRY_PRIMARY_COLOR = Color(0xFFFE0000);
  static const Color STRAWBERRY_SECONDARY_COLOR = Color(0xFFC40000);
  static const Color STRAWBERRY_SHADOW = Color(0x70000000);
  static const Color STRAWBERRY_BUTTONSHADOW = Color(0x403C67F7);
  static const Color STRAWBERRY_TEXT_COLOR = Color(0xFF5A7BB5);
  static const Color STRAWBERRY_FOCUS_COLOR = Color(0xFFFF5A35);

  // BLUEBERRY LOGIN COLORS
  static const Color BLUEBERRY_BLUE = Color(0xFF4D7DF9);
  static const Color BLUEBERRY_BLACK = Color(0xFF222222);
  static const Color BLUEBERRY_ORANGE = Color(0xFFFFD164);
  static const Color BLUEBERRY_GREY = Color(0xFFF7F9FA);
  static const Color BLUEBERRY_TEXT_COLOR = Color(0xFFBBC3CE);

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
