import 'package:flutter/material.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';
import 'package:flutter_template_login/ui/widgets/button_widgets.dart';
import 'package:flutter_template_login/ui/widgets/forgetPassButton_widget.dart';

class PearLogin extends StatefulWidget {
  @override
  _PearLoginState createState() => _PearLoginState();
}

class _PearLoginState extends State<PearLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.PEAR_PRIMARY_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 100, 25, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                UIHelper.hello,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: UIHelper.dynamicSp(70),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                UIHelper.signInToYourAccount,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: UIHelper.dynamicSp(30),
                ),
              ),
              Padding(
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
              ),
              ForgetPasswordButton(
                color: Colors.white,
                rightPadding: 0,
              ),
              InkWell(
s                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(80),
                        topRight: Radius.circular(80),
                      )),
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
              )
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
}
