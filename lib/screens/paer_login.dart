import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';

class PearLogin extends StatefulWidget {
  @override
  _PearLoginState createState() => _PearLoginState();
}

class _PearLoginState extends State<PearLogin> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      backgroundColor: UIHelper.PEAR_PRIMARY_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 100, 25, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _helloText,
              _description,
              _formField,
              _forgetPassword,
              _loginButton,
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField(String text, bool obscure) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
        child: TextField(
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
          obscureText: obscure,
          autocorrect: false,
          cursorColor: Colors.white,
          maxLines: 1,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(Icons.email),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            hintText: text,
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      );
  Widget get _loginButton => Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: InkWell(
          borderRadius: _loginButtonBorderStyle,
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: _loginButtonBorderStyle),
            height: UIHelper.dynamicHeight(300),
            width: UIHelper.dynamicWidth(500),
            child: Center(
              child: Text(
                UIHelper.signIn.toUpperCase(),
                style: TextStyle(
                  color: UIHelper.PEAR_PRIMARY_COLOR,
                  fontSize: UIHelper.dynamicSp(40),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      );
  Widget get _helloText => Text(UIHelper.hello, style: _helloTextStyle(70));

  Widget get _description =>
      Text(UIHelper.signAccount, style: _helloTextStyle(30));
  Widget get _forgetPassword => Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: SizedBox(
              height: 30,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0)),
                onPressed: () {},
                child: Text(UIHelper.forgetPassword,
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
            )),
      );
  Widget get _formField => Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                _textField(UIHelper.email, false),
                _textField(UIHelper.password, true),
              ],
            ),
          ),
        ),
      );
}

BorderRadius get _loginButtonBorderStyle => BorderRadius.only(
      bottomRight: Radius.circular(80),
      topRight: Radius.circular(80),
    );

TextStyle _helloTextStyle(double fontSize) => TextStyle(
      color: Colors.white,
      fontSize: UIHelper.dynamicSp(fontSize),
      fontWeight: FontWeight.bold,
    );
