import 'package:flutter/material.dart';
import 'package:study_jam/src/screens/profile_screen.dart';
import 'src/screens/home_screen.dart';
import 'src/utils/theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      theme: myThemeData,
      // ignore: dead_code
      initialRoute: false ? '/profile' : '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
