import 'package:flutter/material.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';
import 'package:flutter_template_login/ui/widgets/forgetPassButton_widget.dart';

class BlueberryLogin extends StatefulWidget {
  @override
  _BlueberryLoginState createState() => _BlueberryLoginState();
}

class _BlueberryLoginState extends State<BlueberryLogin> {
  bool hiddentText = true;

  void _toggleVisibility() {
    setState(() {
      hiddentText = !hiddentText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: UIHelper.BLUEBERRY_BLACK),
        backgroundColor: UIHelper.WHITE,
        title: Text(
          UIHelper.signInLower,
          style: TextStyle(
              color: UIHelper.BLUEBERRY_BLACK, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: UIHelper.WHITE,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _textField,
          _passwordField,
          new ForgetPasswordButton(
            color: UIHelper.BLUEBERRY_ORANGE,
            rightPadding: 30,
          ),
          _loginButton,
        ],
      ),
    );
  }

  Widget get _textField => Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: TextField(
          style: TextStyle(color: UIHelper.BLUEBERRY_TEXT_COLOR),
          textAlign: TextAlign.left,
          obscureText: false,
          autocorrect: false,
          cursorColor: UIHelper.BLUEBERRY_BLACK,
          maxLines: 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: UIHelper.BLUEBERRY_GREY,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: UIHelper.BLUEBERRY_TEXT_COLOR, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: UIHelper.BLUEBERRY_TEXT_COLOR, width: 2)),
            hintText: UIHelper.email,
            contentPadding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
            hintStyle: TextStyle(
                color: UIHelper.BLUEBERRY_TEXT_COLOR,
                fontWeight: FontWeight.bold),
          ),
        ),
      );

  Widget get _passwordField => Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: TextField(
          style: TextStyle(color: UIHelper.BLUEBERRY_TEXT_COLOR),
          textAlign: TextAlign.left,
          obscureText: hiddentText,
          autocorrect: false,
          cursorColor: UIHelper.BLUEBERRY_BLACK,
          maxLines: 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: UIHelper.BLUEBERRY_GREY,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: UIHelper.BLUEBERRY_TEXT_COLOR, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: UIHelper.BLUEBERRY_TEXT_COLOR, width: 2)),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: hiddentText
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
                onPressed: _toggleVisibility,
                color: UIHelper.BLUEBERRY_TEXT_COLOR,
              ),
            ),
            hintText: UIHelper.password,
            contentPadding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
            hintStyle: TextStyle(
                color: UIHelper.BLUEBERRY_TEXT_COLOR,
                fontWeight: FontWeight.bold),
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
              borderRadius: new BorderRadius.circular(10)),
          onPressed: () {},
          child: Text(
            UIHelper.signInLower,
            style: TextStyle(
                fontSize: 17,
                color: UIHelper.WHITE,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5),
          ),
        ),
      );
}
