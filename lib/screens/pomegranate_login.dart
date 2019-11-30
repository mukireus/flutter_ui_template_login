import 'package:flutter/material.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';

class PomegranateLogin extends StatefulWidget {
  @override
  PomegranateStateLogin createState() => PomegranateStateLogin();
}

class PomegranateStateLogin extends State<PomegranateLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.WHITE,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              height: 130,
              width: 130,
              child: CircleAvatar(
                backgroundColor: UIHelper.POMEGRANATE_PRIMARY_COLOR,
                child: Text(
                  "Logo",
                  style: TextStyle(
                      color: UIHelper.WHITE, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 10),
            child: Container(
              decoration: BoxDecoration(
                color: UIHelper.WHITE,
                boxShadow: [
                  BoxShadow(
                    color: UIHelper.POMEGRANATE_SHADOW_COLOR,
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 1.0, // has the effect of extending the shadow
                    offset: Offset(
                      3.0, // horizontal, move right 10
                      3.0, // vertical, move down 10
                    ),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  _textField,
                  _passwordField,
                ],
              ),
            ),
          ),
          _forgetPasswordButton,
          _loginButton,
          _loginFacebookButton,
        ],
      ),
    );
  }

  Widget get _textField => Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: TextField(
          style: TextStyle(color: UIHelper.POMEGRANATE_TEXT_COLOR),
          textAlign: TextAlign.left,
          obscureText: false,
          autocorrect: false,
          cursorColor: UIHelper.POMEGRANATE_TEXT_COLOR,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: UIHelper.username,
            hintStyle: TextStyle(color: UIHelper.POMEGRANATE_TEXT_COLOR),
          ),
        ),
      );

  Widget get _passwordField => Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
        child: TextField(
          style: TextStyle(color: UIHelper.POMEGRANATE_TEXT_COLOR),
          textAlign: TextAlign.left,
          obscureText: true,
          autocorrect: false,
          cursorColor: UIHelper.POMEGRANATE_TEXT_COLOR,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: UIHelper.password,
            hintStyle: TextStyle(color: UIHelper.POMEGRANATE_TEXT_COLOR),
          ),
        ),
      );
  Widget get _forgetPasswordButton => Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: InkWell(
          child: Text(
            UIHelper.forgetPassword,
            style: TextStyle(
                color: UIHelper.POMEGRANATE_TEXT_COLOR,
                fontWeight: FontWeight.w700,
                fontSize: 17),
          ),
          onTap: () {},
        ),
      );
  Widget get _loginButton => Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: MaterialButton(
          height: 56,
          minWidth: double.infinity,
          color: UIHelper.POMEGRANATE_PRIMARY_COLOR,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5)),
          onPressed: () {},
          child: Text(
            UIHelper.login.toUpperCase(),
            style: TextStyle(
                fontSize: 17,
                color: UIHelper.WHITE,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5),
          ),
        ),
      );
  Widget get _loginFacebookButton => Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: MaterialButton(
          height: 56,
          minWidth: double.infinity,
          color: UIHelper.FACEBOOK_COLOR,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5)),
          onPressed: () {},
          child: Text(
            UIHelper.loginFacebook.toUpperCase(),
            style: TextStyle(
                fontSize: 17,
                color: UIHelper.WHITE,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5),
          ),
        ),
      );
}
