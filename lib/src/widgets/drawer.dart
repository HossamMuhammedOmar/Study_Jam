import 'package:flutter/material.dart';
import 'my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).accentColor,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            UserAccountsDrawerHeader(
              accountName: Text(
                'Hossam Omar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              accountEmail: Text('hossamomar9876@gmail.com'),
              currentAccountPicture: Image.asset('assets/images/coolboy.png'),
            ),
            Divider(
              color: Colors.white,
            ),
            MyListTile('Home Page'),
            MyListTile('Profie'),
            MyListTile('Favorite'),
            MyListTile('Food List'),
            MyListTile('Log out'),
            MyListTile('unsubscribe'),
          ],
        ),
      ),
    );
  }
}
