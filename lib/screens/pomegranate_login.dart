import 'package:flutter/material.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';
import 'package:flutter_template_login/ui/widgets/forgetPassButton_widget.dart';

class PomegranateLogin extends StatefulWidget {
  @override
  PomegranateStateLogin createState() => PomegranateStateLogin();
}

class PomegranateStateLogin extends State<PomegranateLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.WHITE,
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _logo,
              _textFieldContainer,
              new ForgetPasswordButton(
                color: UIHelper.POMEGRANATE_TEXT_COLOR,
                rightPadding: 30,
              ),
              _loginButton(UIHelper.login, UIHelper.POMEGRANATE_PRIMARY_COLOR),
              _loginButton(UIHelper.loginFacebook, UIHelper.FACEBOOK_COLOR),
            ],
          ),
        ),
      ]),
    );
  }

  Widget get _logo => Center(
        child: Container(
          height: 130,
          width: 130,
          child: CircleAvatar(
            backgroundColor: UIHelper.POMEGRANATE_PRIMARY_COLOR,
            child: Text(
              "Logo",
              style:
                  TextStyle(color: UIHelper.WHITE, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
  static Offset offset = Offset(3.0, 3.0);

  final boxShadow = BoxShadow(
      color: UIHelper.POMEGRANATE_SHADOW_COLOR,
      blurRadius: 10.0, // has the effect of softening the shadow
      spreadRadius: 1.0, // has the effect of extending the shadow
      offset: offset);

  Widget get _textFieldContainer => Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 10),
        child: Container(
          decoration: BoxDecoration(
            color: UIHelper.WHITE,
            boxShadow: [boxShadow],
          ),
          child: Column(
            children: <Widget>[
              _textField(UIHelper.username, false),
              _textField(UIHelper.password, true),
            ],
          ),
        ),
      );

  Widget _textField(String text, bool obscure) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: TextField(
          style: TextStyle(color: UIHelper.POMEGRANATE_TEXT_COLOR),
          textAlign: TextAlign.left,
          obscureText: obscure,
          autocorrect: false,
          cursorColor: UIHelper.POMEGRANATE_TEXT_COLOR,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(color: UIHelper.POMEGRANATE_TEXT_COLOR),
          ),
        ),
      );

  Widget _loginButton(String text, Color color) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: MaterialButton(
          height: 56,
          minWidth: double.infinity,
          color: color,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5)),
          onPressed: () {},
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                fontSize: 17,
                color: UIHelper.WHITE,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5),
          ),
        ),
      );
}
