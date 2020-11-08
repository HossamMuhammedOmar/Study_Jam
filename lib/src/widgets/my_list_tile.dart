import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final title;
  final key;
  MyListTile(this.title, this.key);

  @override
  Widget build(BuildContext context) {
    return Card(
      key: key,
      elevation: 5,
      child: ListTile(
        title: Text('$title'),
        onTap: () {
          print('$title');
        },
      ),
    );
  }
}
