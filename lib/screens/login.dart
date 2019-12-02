import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          firshChild,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Spacer(),
                Expanded(
                  flex: 8,
                  child: Column(
                    children: <Widget>[
                      Wrap(
                        runSpacing: 15,
                        children: <Widget>[
                          Text("Welcome",
                              style: Theme.of(context).textTheme.display1),
                          Text(
                            "asdasd" * 25,
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 9,
                                child: Stack(
                                  children: <Widget>[
                                    stackContainer,
                                    stackContainerFAB
                                  ],
                                ),
                              ),
                              Spacer(),
                              socialIcons
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget get stackContainer => Positioned.fill(
        bottom: 25,
        child: Material(
          elevation: 25,
          color: Colors.transparent,
          shadowColor: Colors.black,
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
            child: stackTabbarHeader2,
          ),
        ),
      );

  Widget get _inputField => Expanded(
        child: TextField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
      );

  List<String> tabItems = ["Login", "Signup"];

  Widget get stackTabbarHeader2 => DefaultTabController(
        length: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Container(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(color: Colors.black, fontSize: 25),
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                indicatorColor: Colors.red,
                tabs: <Widget>[
                  Tab(text: tabItems.first),
                  Tab(text: tabItems[1]),
                ],
              ),
            ),
            Spacer(),
            Expanded(
              flex: 9,
              child: TabBarView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: <Widget>[
                        _inputField,
                        _inputField,
                        _inputField,
                        Expanded(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "asdasdasdasdasdasdasdasdasd \n",
                                  style: TextStyle(color: Colors.grey)),
                              TextSpan(
                                  text: "Terms Of Updatea \n",
                                  style: TextStyle(
                                      color: Colors.red,
                                      decoration: TextDecoration.underline)),
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text("data"),
                ],
              ),
            )
          ],
        ),
      );

  Widget get stackTabbarHeader => Container(
        height: 50,
        padding: EdgeInsets.all(10),
        alignment: Alignment.topLeft,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              children: <Widget>[
                Text(
                  tabItems[index],
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(color: Colors.black),
                ),
                Divider(
                  height: 5,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
      );

  Widget get stackContainerFAB => Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        height: 50,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 20,
          child: Icon(
            Icons.chevron_right,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      );
  Widget get socialIcons => Wrap(
        alignment: WrapAlignment.center,
        spacing: 20,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
          ),
          FloatingActionButton(
            onPressed: () {},
          ),
          FloatingActionButton(
            onPressed: () {},
          ),
        ],
      );

  Widget get firshChild => Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.pink],
                    begin: Alignment.bottomCenter,
                    stops: [0.0, 0.4],
                    end: Alignment.bottomRight),
              ),
            ),
          ),
          Spacer(flex: 6)
        ],
      );
}
