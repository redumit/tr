import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tr/ui/home/allPage.dart';

class HomeNavBarView extends StatefulWidget {
  @override
  _HomeNavBarViewState createState() => _HomeNavBarViewState();
}

class _HomeNavBarViewState extends State<HomeNavBarView>
    with SingleTickerProviderStateMixin {
  int tabIndex = 0;
  TabController _bottomTabController;
  Color brand = Color.fromARGB(255, 170, 92, 178);
  static Map<int, Color> colors = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };
  MaterialColor colorCustom = MaterialColor(0xFF880E4F, colors);
  List<Widget> bodys = [
    AllPageView(),
    Center(
      child: Text("Funny"),
    ),
    Center(
      child: Text("For Kids"),
    ),
    Center(
      child: Text("Series Movies"),
    ),
    Center(
      child: Text("My Lists"),
    ),
  ];
  @override
  void initState() {
    _bottomTabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _bottomTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(

        body: Stack(
          children: <Widget>[
            TabBarView(
              controller: _bottomTabController,
              children: bodys,
            ),
            bottomAppBar()
//            new PreferredSize(
//              preferredSize: Size.fromHeight(kToolbarHeight),
//              child: new Container(
////            color: brand,
//                color: colorCustom,
//                child: new SafeArea(
//                  child: Column(
//                    children: <Widget>[
//                      new Expanded(child: new Container()),
//                      bottomAppBar(),
//                    ],
//                  ),
//                ),
//              ),
//            ),
          ],
        ),
      ),
    );
  }

  Widget bottomAppBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black38,
      child: TabBar(
        controller: _bottomTabController,
        indicatorColor: Colors.blue,
        indicatorWeight: 5.0,
        isScrollable: true,
        dragStartBehavior:DragStartBehavior.down ,
        tabs: <Widget>[
          Tab(
//            icon: Icon(FontAwesomeIcons.medal),
            text: "All",
          ),
          Tab(
            text: "Funny",
          ),
          Tab(
            text: "For Kids",
          ),
          Tab(
            text: "Series Movies",
          ),
          Tab(
            text: "My List",
          )
        ],
        onTap: (i) {
          setState(() {
            tabIndex = i;
          });
        },
      ),
    );
  }
}
