import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';
import 'package:flutter_template_login/ui/widgets/button_widgets.dart';
import 'package:flutter_template_login/ui/widgets/forgetPassButton_widget.dart';

class WatermelonLogin extends StatefulWidget {
  @override
  _WatermelonLoginState createState() => _WatermelonLoginState();
}

class _WatermelonLoginState extends State<WatermelonLogin> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      body: Container(
        color: UIHelper.WATERMELON_PRIMARY_COLOR,
        child: Column(
          children: <Widget>[_topBar, _bottomBar],
        ),
      ),
    );
  }

  Widget get _topBar => Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
          child: Text(
            UIHelper.signInLower,
            style: TextStyle(
              color: Colors.white,
              fontSize: UIHelper.dynamicSp(170),
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      );
  Widget get _bottomBar => Expanded(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    UIHelper.hello,
                    style: TextStyle(
                        fontSize: UIHelper.dynamicSp(70),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                  new Text("Create an account to continue"),
                  _textField(UIHelper.username, false),
                  _textField(UIHelper.password, true),
                  new ForgetPasswordButton(
                    color: UIHelper.WATERMELON_PRIMARY_COLOR,
                    rightPadding: 0,
                  ),
                  _loginButton,
                ],
              ),
            ),
          ),
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

  Widget get _loginButton => Center(
        child: Padding(
            padding: EdgeInsets.only(top: 70),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: UIHelper.WATERMELON_SHADOW,
                      blurRadius:
                          10.0, // has the effect of softening the shadow
                      spreadRadius:
                          1.0, // has the effect of extending the shadow
                      offset: Offset(
                        0.0, // horizontal, move right 10
                        5.0, // vertical, move down 10
                      ),
                    ),
                  ],
                ),
                child: RaisedButton(
                  color: UIHelper.WATERMELON_PRIMARY_COLOR,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0)),
                  onPressed: () {},
                  child: Text(
                    UIHelper.signInLower,
                    style: TextStyle(
                        fontSize: 20, color: UIHelper.SPOTIFY_TEXT_COLOR),
                  ),
                ),
              ),
            )),
      );
}
