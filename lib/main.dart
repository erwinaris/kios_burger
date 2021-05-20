import 'package:flutter/material.dart';
import 'data.dart';
import 'details.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kios Burger',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
  
    generateRoute(RouteSettings settings){
    final path = settings.name.split('/');
    final pilihMenu = path[1];

  
    Menu menu = menus.firstWhere((it) => it.pilihMenu == pilihMenu);

    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Details(menu),
    );
  }
}