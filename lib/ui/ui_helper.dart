import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  // STRING
  static final String createAccount = "Create\nAccount";
  static final String welcomeBack = "Welcome\nBack";
  static final String name = "Name";
  static final String hello = "Hello";
  static final String email = "Email address";
  static final String username = "Username";
  static final String password = "Password";
  static final String login = "Login";
  static final String signIn = "Sign In";
  static final String signUp = "SIGN UP";
  static final String signInLower = "Sign in";
  static final String signUpLower = "Sign up";
  static final String stayLoggedIn = "Stay Logged In";
  static final String forgetPassword = "Forget Password?";
  static final String loginSpotify = "LOG IN WITH SPOTIFY ";
  static final String loginFacebook = "Login with Facebook";
  static final String emailRequired = "Email is required";
  static final String passwordRequired = "Password is required";
  static final String dontHaveAnAccount = "Don't have an account?";
  static final String signAccount = "Sign in to your Account";

  // IMAGES
  static final String muzPhoto = "assets/images/muz_login.png";
  static final String grapePhoto = "assets/images/grape_login.png";
  static final String strawberryPhoto = "assets/images/strawberry_login.png";
  static final String blueberryPhoto = "assets/images/blueberry.png";
  static final String pomegranatePhoto = "assets/images/pomegranate_login.png";
  static final String apricotPhoto = "assets/images/apricot_login.png";
  static final String figPhoto = "assets/images/fig_login.png";
  static final String cherryPhoto = "assets/images/cherry_login.png";
  static final String applePhoto = "assets/images/apple_login.png";
  static final String watermelonPhoto = "assets/images/watermelon_login.png";
  //static final String pineapplePhoto = "assets/images/pineapple_login.png";
  static final String noPhoto = "assets/images/no_photo.png";
  static final String scooter = "assets/drawable/scooter.png";

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

  // POMEGRANATE LOGIN COLORS
  static const Color POMEGRANATE_PRIMARY_COLOR = Color(0xFFFF5E7A);
  static const Color POMEGRANATE_SHADOW_COLOR = Color(0x60FF5E7A);
  static const Color POMEGRANATE_TEXT_COLOR = Color(0xFF6D7278);

  // APRICOT LOGIN COLORS
  static const Color APRICOT_PRIMARY_COLOR = Color(0xFFFEB209);
  static const Color APRICOT_SHADOW_COLOR = Color(0x60FF5E7A);
  static const Color APRICOT_TEXT_COLOR = Color(0xFFC2C2C2);

  // FIG LOGIN COLORS
  static const Color FIG_PRIMARY_COLOR = Color(0xFF182058);
  static const Color FIG_SECONDARY_COLOR = Color(0xFFE03E3E);
  static const Color FIG_SHADOW_COLOR = Color(0x60FF5E7A);
  static const Color FIG_TEXT_COLOR = Color(0xFF9E9D9D);
  static const Color FIG_FORGET_TEXT_COLOR = Color(0xFF38B5F2);

  // CHERRY LOGIN COLORS
  static const Color CHERRY_PRIMARY_COLOR = Color(0xFF1566E0);
  static const Color CHERRY_INPUT_TEXT_COLOR = Color(0xFF1EA5FF);

  // APPLE LOGIN COLORS
  static const Color APPLE_GRADIENT_COLOR_ONE = Color(0xFFFBC79A);
  static const Color APPLE_GRADIENT_COLOR_TWO = Color(0xFFDD5671);

  // WATERMELON LOGIN COLORS
  static const Color WATERMELON_PRIMARY_COLOR = Color(0xFFC72C41);
  static const Color WATERMELON_SHADOW = Color(0x40C72C41);

  // PINEAPPLE LOGIN COLOR
  static const Color PINEAPPLE_PRIMARY_COLOR = Color(0xFF71CEEB);
  static const Color PINEAPPLE_SECONDARY_COLOR = Color(0xFFF1F0F2);
  static const Color PINEAPPLE_SHADOW = Color(0x30000000);

  // PEAR LOGIN COLOR
  static const Color PEAR_PRIMARY_COLOR = Color(0xFF4873FF);

  // GLOBAL COLORS
  static const Color SPOTIFY_COLOR = Color(0xFF1DB954);
  static const Color SPOTIFY_TEXT_COLOR = Color(0xFFF4F6FC);
  static const Color SPOTIFY_SHADOW = Color(0x401DB954);
  static const Color WHITE = Colors.white;
  static const Color BLACK = Colors.black;
  static const Color THEME_PRIMARY = Color(0XFF575C79);
  static const Color THEME_LIGHT = Color(0XFF8489A8);
  static const Color THEME_DARK = Color(0XFF2D334D);
  static const Color BACKGROUND_COLOR = Color(0XFFAEB2D1);
  static const Color FACEBOOK_COLOR = Color(0xFFF3B5998);

  // SPACE
  static dynamicHeight(double height) => ScreenUtil.instance.setHeight(height);
  static dynamicWidth(double width) => ScreenUtil.instance.setWidth(width);
  static dynamicSp(double fontsize) => ScreenUtil.instance.setSp(fontsize);
}
