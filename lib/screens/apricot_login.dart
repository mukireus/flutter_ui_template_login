import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';
import 'package:flutter_template_login/ui/widgets/forgetPassButton_widget.dart';

class ApricotLogin extends StatefulWidget {
  @override
  _ApricotLoginState createState() => _ApricotLoginState();
}

class _ApricotLoginState extends State<ApricotLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.APRICOT_PRIMARY_COLOR,
      //TODO ChangeListView
      body: ListView(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CustomShape(),
          ],
        ),
      ]),
    );
  }
}

class CustomShape extends StatefulWidget {
  @override
  _CustomShapeState createState() => _CustomShapeState();
}

class _CustomShapeState extends State<CustomShape> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CustomPaint(
            painter: CurvePainter(),
            child: Container(
              height: UIHelper.dynamicHeight(1500.0),
              width: UIHelper.dynamicWidth(800.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                    child: Text(
                      UIHelper.login.toUpperCase(),
                      style: TextStyle(
                        color: UIHelper.BLACK,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  _textField,
                  _passwordField,
                  new ForgetPasswordButton(
                    color: UIHelper.APRICOT_TEXT_COLOR,
                    rightPadding: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 250),
                        IconButton(
                          // TODO Control
                          icon: (!Platform.isIOS)
                              ? Icon(Icons.arrow_forward)
                              : Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget get _textField => Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: TextField(
          style: TextStyle(color: UIHelper.APRICOT_TEXT_COLOR),
          textAlign: TextAlign.left,
          obscureText: false,
          autocorrect: false,
          cursorColor: UIHelper.POMEGRANATE_TEXT_COLOR,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: UIHelper.username,
            hintStyle: TextStyle(color: UIHelper.APRICOT_TEXT_COLOR),
          ),
        ),
      );
  Widget get _passwordField => Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: TextField(
          style: TextStyle(color: UIHelper.APRICOT_TEXT_COLOR),
          textAlign: TextAlign.left,
          obscureText: true,
          autocorrect: false,
          cursorColor: UIHelper.POMEGRANATE_TEXT_COLOR,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: UIHelper.password,
            hintStyle: TextStyle(color: UIHelper.APRICOT_TEXT_COLOR),
          ),
        ),
      );
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()..color = Colors.white;
    // create a path
    var path = Path();
    path.moveTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width, size.height, size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
