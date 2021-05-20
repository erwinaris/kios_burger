import 'package:flutter/material.dart';
import 'data.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},
      ),
      title: Text('Kios Burger'),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: (){},
        ),
      ],
    );

    // create menu tile hero

    createTile(Menu menu) => Hero(tag: menu.pilihMenu, child: Material(elevation: 15.0,
      shadowColor: Colors.green[700],
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, 'details/${menu.pilihMenu}');
        },
        child: Image(image: AssetImage(menu.image),
        fit: BoxFit.cover,),
      ),
    ),
    );


    // grid tile
        final grid = CustomScrollView(
          primary: false,
          slivers: [
            SliverPadding(padding: EdgeInsets.all(16.0),
            sliver: SliverGrid.count(crossAxisCount: 3,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            children: 
              menus.map((menu) => createTile(menu)).toList(),
        ),
        ),
      ],
    );


    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}