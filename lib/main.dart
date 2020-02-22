import 'package:flutter/material.dart';
import 'package:flutter_app/SearchPage/SearchPage.dart';
import 'SearchPage/SearchPage.dart';
import 'Cart/Cart.dart';
import 'HomePage/HomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  final routes = <String,WidgetBuilder>
  {
    'home': (context)=> HomePage(),
      'login': (context)=> Cart(),
    'searchpage': (context)=> SearchPage(),
  };


  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
        title: "MCart",
        theme: ThemeData
        (
        primaryColor: Colors.lightGreen
    ),
    routes: routes,
      initialRoute: 'home',
    );
  }
}
