import 'package:flutter/material.dart';
import 'data.dart';


class Details extends StatelessWidget {

  final Menu menu;

  Details(this.menu);


  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );


  @override
  Widget build(BuildContext context) {

    // app bar
    final appBar = AppBar(
      elevation: .5,
      title: Text('Kios Burger'),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: (){})
      ],
    );

    // details topleft
    final topLeft = Column(
      children: [
        Padding(padding: EdgeInsets.all(16.0),
        child: Hero(tag: menu.pilihMenu, child: Material(
          elevation: 15.0,
          shadowColor: Colors.green[700],
          child: Image(image: AssetImage(menu.image),
          fit: BoxFit.cover,),
          ),
          ),
          ),
      ],
    );


    // details topright
    final topRight = Column(
      children: [
        Text(menu.pilihMenu),

        SizedBox(height: 32.0),
        Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.yellow,
          child: MaterialButton(onPressed: (){},
          minWidth: 160.0,
          color: Colors.yellow,
          child: text('BELI',),
          ),
        ),
      ],
    );

    // top content
    final topContent = Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          Flexible(flex: 2, child: topLeft),
          Flexible(child: topRight, flex: 3,)
        ],
      ),
    );

    // scroling text
    final bottomContent = Container(
      height: 220.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(menu.description),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          topContent,
          bottomContent
        ],
      ),
    );
  }
}