import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';
import 'package:flutter_template_login/ui/widgets/button_widgets.dart';

class AvocadosLogin extends StatefulWidget {
  @override
  _AvocadosLoginState createState() => _AvocadosLoginState();
}

class _AvocadosLoginState extends State<AvocadosLogin> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }

  Widget get _appBar => AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: UIHelper.AVOCADOS_PRIMARY_COLOR,
        ),
      );
  Widget get _body => ListView(
        children: <Widget>[
          Center(
            child: Text(UIHelper.login, style: _textStyle),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 30, 60, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _textField(UIHelper.username, false),
                _textField(UIHelper.password, true),
                new ButtonWidget(
                  color: UIHelper.AVOCADOS_SECONDARY_COLOR,
                  shadow: Colors.black.withOpacity(0.1),
                  text: UIHelper.login,
                  topPadding: 50,
                ),
              ],
            ),
          )
        ],
      );

  Widget _textField(String text, bool obscure) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
        child: TextField(
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.left,
          obscureText: obscure,
          autocorrect: false,
          cursorColor: Colors.black,
          maxLines: 1,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.withOpacity(0.3),
              labelText: text,
              hintStyle: TextStyle(color: Colors.black),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      );
}

TextStyle get _textStyle => TextStyle(
      fontSize: UIHelper.dynamicSp(100),
      fontWeight: FontWeight.bold,
      color: UIHelper.AVOCADOS_PRIMARY_COLOR,
    );

BorderRadius get _loginButtonBorderStyle =>
    BorderRadius.all(Radius.circular(80));
