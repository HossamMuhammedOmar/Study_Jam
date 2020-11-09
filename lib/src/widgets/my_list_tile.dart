import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final title;
  MyListTile(this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        subtitle: Text('Hey, i\'m using hossam app'),
        leading: CircleAvatar(
          child: FlutterLogo(
            size: 30.0,
            textColor: Colors.red,
          ),
        ),
        title: Text('$title'),
        onTap: () {
          if (title.toString() == 'Home Page') {
            Navigator.of(context).pushNamed('/');
          }

          if (title.toString() == 'Profie') {
            Navigator.of(context).pushNamed('/profile');
          }
        },
      ),
    );
  }
}
