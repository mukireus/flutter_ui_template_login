import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';
import 'package:flutter_template_login/ui/widgets/forgetPassButton_widget.dart';
import 'package:flutter_template_login/ui/widgets/textField_widget.dart';

class FigLogin extends StatefulWidget {
  @override
  _FigLoginState createState() => _FigLoginState();
}

class _FigLoginState extends State<FigLogin> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      backgroundColor: UIHelper.FIG_PRIMARY_COLOR,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              UIHelper.scooter,
              height: UIHelper.dynamicHeight(400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: UIHelper.WHITE,
                height: UIHelper.dynamicHeight(900),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        UIHelper.login.toUpperCase(),
                        style: TextStyle(fontSize: UIHelper.dynamicSp(70)),
                      ),
                      _textField(UIHelper.username, false),
                      _textField(UIHelper.password, true),
                      new ForgetPasswordButton(
                        color: UIHelper.FIG_FORGET_TEXT_COLOR,
                        rightPadding: 0,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            height: UIHelper.dynamicHeight(150),
                            width: UIHelper.dynamicWidth(150),
                            color: UIHelper.FIG_SECONDARY_COLOR,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_forward,
                                color: UIHelper.WHITE,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _textField(String text, bool obscure) => Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: TextField(
          style: TextStyle(color: UIHelper.FIG_TEXT_COLOR),
          textAlign: TextAlign.left,
          obscureText: obscure,
          autocorrect: false,
          cursorColor: UIHelper.FIG_TEXT_COLOR,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(color: UIHelper.FIG_TEXT_COLOR),
          ),
        ),
      );
}
