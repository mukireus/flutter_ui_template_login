import 'package:flutter/material.dart';
import 'package:flutter_template_login/home_list.dart';
import 'package:flutter_template_login/ui/ui_helper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Login',
      theme: ThemeData(
        primaryColor: UIHelper.THEME_PRIMARY,
        primaryColorLight: UIHelper.THEME_LIGHT,
        primaryColorDark: UIHelper.THEME_DARK,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 0));
    return true;
  }

  List<HomeList> homeList = HomeList.homeList;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool multiple = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.BACKGROUND_COLOR,
      key: _scaffoldKey,
      drawer: new Drawer(),
      appBar: _appBar,
      body: _body,
    );
  }

  Widget get _appBar => new AppBar(
        title: Text(
          "UI Login",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        actions: <Widget>[
          IconButton(
            icon: Icon(multiple ? Icons.dashboard : Icons.view_agenda),
            onPressed: () {
              setState(() {
                multiple = !multiple;
              });
            },
          ),
        ],
      );

  Widget get _body => FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SizedBox();
        } else {
          return GridView(
            padding: EdgeInsets.only(top: 5, left: 12, right: 12),
            scrollDirection: Axis.vertical,
            children: List.generate(homeList.length, (index) {
              return HomeListView(
                listData: homeList[index],
                callBack: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => homeList[index].navigateScreen,
                    ),
                  );
                },
              );
            }),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: multiple ? 2 : 1,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              childAspectRatio: 1.5,
            ),
          );
        }
      });
}

class HomeListView extends StatelessWidget {
  final HomeList listData;
  final VoidCallback callBack;

  const HomeListView({
    Key key,
    this.listData,
    this.callBack,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Image.asset(
              listData.imagePath,
              fit: BoxFit.cover,
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                onTap: () {
                  callBack();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
