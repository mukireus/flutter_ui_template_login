import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';

class AppleLogin extends StatefulWidget {
  @override
  _AppleLoginState createState() => _AppleLoginState();
}

class _AppleLoginState extends State<AppleLogin> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          CustomPaint(
            painter: CurvePainter(),
            child: Container(height: double.infinity),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 300, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  UIHelper.login.toUpperCase(),
                  style: TextStyle(
                    color: UIHelper.WHITE,
                    fontSize: UIHelper.dynamicSp(80),
                  ),
                ),
                SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    _textField(UIHelper.email, false),
                    _textField(UIHelper.password, true),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _textField(String text, bool obscure) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 40, 10),
        child: TextField(
          style: TextStyle(color: UIHelper.WHITE),
          textAlign: TextAlign.left,
          obscureText: obscure,
          autocorrect: false,
          cursorColor: UIHelper.WHITE,
          maxLines: 1,
          decoration: InputDecoration(
            border: new UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.white)),
            hintText: text,
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      );
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()..color = UIHelper.APPLE_GRADIENT_COLOR_TWO;
    // create a path
    var path = Path();
    path.moveTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.23, size.height * 0.14,
        size.width * 0.45, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.39, size.width, size.height * 0.53);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class CurvePainterr extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()..color = UIHelper.APPLE_GRADIENT_COLOR_TWO;
    // create a path
    var path = Path();
    path.moveTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.23, size.height * 0.14,
        size.width * 0.45, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.39, size.width, size.height * 0.53);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

final Gradient gradient = new LinearGradient(
  colors: <Color>[
    UIHelper.APPLE_GRADIENT_COLOR_ONE,
    UIHelper.APPLE_GRADIENT_COLOR_TWO,
  ],
  stops: [
    0.0,
    0.5,
    0.7,
    0.9,
    1.0,
  ],
);
