import 'package:flutter/material.dart';
import 'package:sibola/favorite.dart';
import 'package:sibola/profile_page.dart';
import 'home_page.dart';
import 'menu.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    ProfilePage.tag: (context) => ProfilePage(),
    HomePage.tag: (context) => HomePage(),
  
      Favorite.tag: (context) => Favorite(),
 
    Menu.tag: (context) => Menu(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: Menu(),
      routes: routes,
    );
  }
}