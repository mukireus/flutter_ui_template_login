import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template_login/ui/styles/text_styles.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';
import 'package:flutter_template_login/ui/widgets/button_widgets.dart';
import 'package:flutter_template_login/ui/widgets/forgetPassButton_widget.dart';
import 'package:flutter_template_login/ui/widgets/textField_widget.dart';

class MuzLogin extends StatefulWidget {
  @override
  _MuzLoginState createState() => _MuzLoginState();
}

class _MuzLoginState extends State<MuzLogin> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      backgroundColor: UIHelper.MUZ_BACKGROUND_COLOR,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _topBar,
            Column(
              children: <Widget>[
                new TextFieldWidget(
                  labelText: UIHelper.email,
                  requiredText: UIHelper.emailRequired,
                  textInputType: TextInputType.emailAddress,
                ),
                new PasswordFieldWidget(
                  labelText: UIHelper.password,
                  requiredText: UIHelper.passwordRequired,
                  textInputType: TextInputType.visiblePassword,
                ),
                new ForgetPasswordButton(
                  color: UIHelper.MUZ_PRIMARY_COLOR,
                  rightPadding: 30,
                ),
                new ButtonWidget(
                  color: UIHelper.MUZ_PRIMARY_COLOR,
                  shadow: UIHelper.MUZ_BUTTONSHADOW,
                  text: UIHelper.signUp,
                  topPadding: 70,
                ),
                new ButtonWidget(
                  color: UIHelper.SPOTIFY_COLOR,
                  shadow: UIHelper.SPOTIFY_SHADOW,
                  text: UIHelper.loginSpotify,
                  topPadding: 10,
                ),
                _signUpButton
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget get _topBar => Container(
      height: UIHelper.dynamicHeight(650),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: UIHelper.MUZ_SHADOW,
                blurRadius: 10.0, // has the effect of softening the shadow
                spreadRadius: 1.0, // has the effect of extending the shadow
                offset: Offset(
                  3.0, // horizontal, move right 10
                  3.0, // vertical, move down 10
                )),
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(UIHelper.dynamicWidth(150)),
              bottomRight: Radius.circular(UIHelper.dynamicWidth(150))),
          color: UIHelper.MUZ_PRIMARY_COLOR),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 130, 0, 0),
          child: Text(UIHelper.welcomeBack, style: UITextStyles.loginStyle)));

  Widget get _signUpButton => Center(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0)),
                onPressed: () {},
                child: Text(
                  UIHelper.signUp,
                  style: TextStyle(
                      fontSize: 20, color: UIHelper.MUZ_PRIMARY_COLOR),
                ),
              ),
            )),
      );
}
