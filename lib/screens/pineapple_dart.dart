import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';

class PineAppleLogin extends StatefulWidget {
  @override
  _PineAppleLoginState createState() => _PineAppleLoginState();
}

class _PineAppleLoginState extends State<PineAppleLogin> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      backgroundColor: UIHelper.PINEAPPLE_SECONDARY_COLOR,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              _backContainer,
              _frontContainer,
            ],
          ),
          _loginButton
        ],
      ),
    );
  }

  Widget get _backContainer => Container(
        height: UIHelper.dynamicHeight(600),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
          color: UIHelper.PINEAPPLE_PRIMARY_COLOR,
        ),
      );
  Widget get _frontContainer => Padding(
        padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
        child: Container(
          height: UIHelper.dynamicHeight(700),
          decoration: BoxDecoration(
              boxShadow: [_boxShadow],
              borderRadius: BorderRadius.circular(40),
              color: Colors.white),
          child: _formField,
        ),
      );

  Widget get _formField => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _textField(UIHelper.email, false),
            _textField(UIHelper.password, true),
          ],
        ),
      );

  Widget _textField(String text, bool obscure) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
        child: TextField(
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.left,
          obscureText: obscure,
          autocorrect: false,
          cursorColor: Colors.grey,
          maxLines: 1,
          decoration: InputDecoration(
            border: new UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.grey)),
            hintText: text,
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      );
  Widget get _loginButton => Padding(
      padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
      child: MaterialButton(
        height: 56,
        minWidth: double.infinity,
        color: UIHelper.PINEAPPLE_PRIMARY_COLOR,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(70.0)),
        onPressed: () {},
        child: Text(
          "Sign In",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ));
}

final BoxShadow _boxShadow = BoxShadow(
    color: UIHelper.PINEAPPLE_SHADOW,
    blurRadius: 5.0, // has the effect of softening the shadow
    spreadRadius: 1.0, // has the effect of extending the shadow
    offset: Offset(
      0.0, // horizontal, move right 10
      1.0, // vertical, move down 10
    ));
