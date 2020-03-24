import 'package:flutter/material.dart';
import 'package:tr/components/videoPlayer.dart';
import 'package:tr/ui/home/allPage.dart';
import 'package:tr/ui/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
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
    MaterialColor colorCustom = MaterialColor(0xFF880E4F, color);
    return MaterialApp(
      title: 'Flutter Demo',
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: colorCustom,
        scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 0.7),
        tabBarTheme: TabBarTheme(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.blue,
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/play': (context) => VideoPlayer(),
      },
    );
  }
}
