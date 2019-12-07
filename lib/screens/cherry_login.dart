import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';
import 'package:flutter_template_login/ui/widgets/forgetPassButton_widget.dart';

class CherryLogin extends StatefulWidget {
  @override
  _CherryLoginState createState() => _CherryLoginState();
}

class _CherryLoginState extends State<CherryLogin> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: UIHelper.WHITE,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CustomPaint(
              painter: CurvePainter(),
              child: Container(
                height: UIHelper.dynamicHeight(500.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Column(
                children: <Widget>[
                  _textField(UIHelper.email, false,
                      Icon(Icons.email, color: UIHelper.CHERRY_PRIMARY_COLOR)),
                  _textField(
                      UIHelper.password,
                      true,
                      Icon(Icons.vpn_key,
                          color: UIHelper.CHERRY_PRIMARY_COLOR)),
                  _loginButton,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new ForgetPasswordButton(
                      color: UIHelper.CHERRY_PRIMARY_COLOR,
                      rightPadding: 0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textField(String text, bool obscure, Icon icon) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: TextField(
          style: TextStyle(color: UIHelper.CHERRY_INPUT_TEXT_COLOR),
          textAlign: TextAlign.left,
          obscureText: obscure,
          autocorrect: false,
          cursorColor: UIHelper.POMEGRANATE_TEXT_COLOR,
          maxLines: 1,
          decoration: InputDecoration(
            prefixIcon: icon,
            hintText: text,
            hintStyle: TextStyle(color: UIHelper.BLACK),
          ),
        ),
      );

  Widget get _loginButton => Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: MaterialButton(
          height: 56,
          minWidth: double.infinity,
          color: UIHelper.BLUEBERRY_BLUE,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30)),
          onPressed: () {},
          child: Text(
            UIHelper.login.toUpperCase(),
            style: TextStyle(
                fontSize: UIHelper.dynamicSp(30),
                color: UIHelper.WHITE,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5),
          ),
        ),
      );
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()..color = UIHelper.CHERRY_PRIMARY_COLOR;
    // create a path
    var path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.300,
        size.width * 0.5, size.height * 0.760);
    path.quadraticBezierTo(size.width * 0.75, size.height * 1.3, size.width * 1,
        size.height * 0.940);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
