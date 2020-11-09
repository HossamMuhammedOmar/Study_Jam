import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}
