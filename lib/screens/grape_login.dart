import 'package:flutter/material.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';

bool _value = false;

class GrapeLogin extends StatefulWidget {
  @override
  _GrapeLoginState createState() => _GrapeLoginState();
}

class _GrapeLoginState extends State<GrapeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.WHITE,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            _textField(UIHelper.email, false),
            _textField(UIHelper.password, true),
            _keepLogin,
            _loginButton,
          ],
        ),
      ),
    );
  }

  Widget _textField(String text, bool obscure) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: TextField(
          obscureText: obscure,
          decoration: new InputDecoration(
            focusedBorder: new OutlineInputBorder(
              borderSide: new BorderSide(color: Color(0xFF5ABD8C), width: 2),
              borderRadius: const BorderRadius.all(
                const Radius.circular(20.0),
              ),
            ),
            enabledBorder: new OutlineInputBorder(
              borderSide: new BorderSide(color: Color(0x80EFEFEF), width: 2),
              borderRadius: const BorderRadius.all(
                const Radius.circular(20.0),
              ),
            ),
            filled: true,
            hintStyle: new TextStyle(color: Color(0x75000000)),
            hintText: text,
          ),
        ),
      );
  Widget get _keepLogin => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Checkbox(
                checkColor: Color(0xFFFFFFFF),
                activeColor: Color(0xFF5ABD8C),
                onChanged: (bool value) {
                  setState(() {
                    _value = value;
                  });
                },
                value: _value),
            Text(UIHelper.stayLoggedIn,
                style: TextStyle(
                    color: Color(0x50212121), fontWeight: FontWeight.w300)),
          ],
        ),
      );
  Widget get _loginButton => Padding(
      padding: const EdgeInsets.all(20),
      child: MaterialButton(
        height: 56,
        minWidth: double.infinity,
        color: Color(0xFF5ABD8C),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0)),
        onPressed: () {},
        child: Text(
          "Sign In",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ));
}
