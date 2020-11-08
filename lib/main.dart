import 'package:flutter/material.dart';
import 'src/screens/home_screen.dart';
import 'src/utils/theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      theme: myThemeData,
      home: HomeScreen(),
    );
  }
}
