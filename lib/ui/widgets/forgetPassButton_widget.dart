import 'package:flutter/material.dart';

import '../ui_helper.dart';

class ForgetPasswordButton extends StatelessWidget {
  final Color color;
  final double rightPadding;
  const ForgetPasswordButton({Key key, this.color, this.rightPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
          padding: EdgeInsets.fromLTRB(0, 5, rightPadding, 0),
          child: SizedBox(
            height: 30,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(50.0)),
              onPressed: () {},
              child: Text(UIHelper.forgetPassword,
                  style: TextStyle(fontSize: 15, color: color)),
            ),
          )),
    );
  }
}
