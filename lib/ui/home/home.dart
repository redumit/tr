import 'package:flutter/material.dart';
import 'package:tr/components/searchDeligate.dart';
import 'package:tr/ui/home/homeBarView.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int index = 0;
  Color brand = Color.fromARGB(255, 170, 92, 178);
  List<Widget> _children = [
    HomeNavBarView(),
    Center(
      child: Text("Movies"),
    ),
    Center(
      child: Text("Streaming"),
    ),
    Center(
      child: Text("Audio"),
    ),
    Center(
      child: Text("More"),
    ),
  ];
  //initialization
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("R3S Mekelle"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],
      ),
      drawer: Drawer(),
      body: _children[index],
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Widget bottomNavBar() {
    return Theme(
      data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Color.fromRGBO(0, 0, 0, 1),
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: brand,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
      ), // sets the inactive color of the `BottomNavigationBar`
      child: new BottomNavigationBar(
        elevation: 16,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            activeIcon: new Icon(Icons.dashboard),
            title: new Text("Home"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.local_movies),
            activeIcon: new Icon(Icons.movie_filter),
            title: new Text("Movies"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(
              Icons.surround_sound,
              color: Colors.red,
            ),
            activeIcon: new Icon(Icons.settings_input_antenna),
            title: new Text("Streaming"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.audiotrack),
            activeIcon: new Icon(Icons.library_music),
            title: new Text("Audio"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.more_vert),
            activeIcon: new Icon(Icons.more),
            title: new Text("More"),
          ),
        ],
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
