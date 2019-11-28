import 'package:flutter/material.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';

class StrawberryLogin extends StatefulWidget {
  @override
  _StrawberryLoginState createState() => _StrawberryLoginState();
}

class _StrawberryLoginState extends State<StrawberryLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.STRAWBERRY_PRIMARY_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              UIHelper.signInLower,
              style: TextStyle(color: UIHelper.WHITE, fontSize: 40),
            ),
            _textField,
            _passwordField,
            _forgetPasswordButton,
            _loginButton,
          ],
        ),
      ),
    );
  }

  Widget get _textField => Padding(
        padding: const EdgeInsets.fromLTRB(50, 70, 50, 10),
        child: TextField(
          style: TextStyle(color: UIHelper.WHITE),
          textAlign: TextAlign.left,
          obscureText: false,
          autocorrect: false,
          cursorColor: UIHelper.WHITE,
          maxLines: 1,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.person,
                color: UIHelper.WHITE,
              ),
            ),
            filled: true,
            fillColor: UIHelper.STRAWBERRY_SECONDARY_COLOR,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                    color: UIHelper.STRAWBERRY_SECONDARY_COLOR, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                    color: UIHelper.STRAWBERRY_SECONDARY_COLOR, width: 2)),
            hintText: UIHelper.username,
            contentPadding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
            hintStyle:
                TextStyle(color: UIHelper.WHITE, fontWeight: FontWeight.bold),
          ),
        ),
      );

  Widget get _passwordField => Padding(
        padding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
        child: TextField(
          style: TextStyle(color: UIHelper.WHITE),
          textAlign: TextAlign.left,
          obscureText: false,
          autocorrect: false,
          cursorColor: UIHelper.WHITE,
          maxLines: 1,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.remove_red_eye,
                color: UIHelper.WHITE,
              ),
            ),
            filled: true,
            fillColor: UIHelper.STRAWBERRY_SECONDARY_COLOR,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                    color: UIHelper.STRAWBERRY_SECONDARY_COLOR, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                    color: UIHelper.STRAWBERRY_SECONDARY_COLOR, width: 2)),
            hintText: UIHelper.password,
            contentPadding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
            hintStyle:
                TextStyle(color: UIHelper.WHITE, fontWeight: FontWeight.bold),
          ),
        ),
      );

  Widget get _forgetPasswordButton => Padding(
        padding: const EdgeInsets.only(top: 30),
        child: InkWell(
          child: Text(
            UIHelper.forgetPassword,
            style: TextStyle(
                color: UIHelper.WHITE,
                fontWeight: FontWeight.bold,
                fontSize: 17),
          ),
          onTap: () {},
        ),
      );

  Widget get _loginButton => Padding(
        padding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
        child: MaterialButton(
          height: 56,
          minWidth: double.infinity,
          color: UIHelper.WHITE,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0)),
          onPressed: () {},
          child: Text(
            UIHelper.login,
            style: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      );
}
