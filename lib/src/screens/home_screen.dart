import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    'https://jsonplaceholder.typicode.com/photos/1',
    'https://jsonplaceholder.typicode.com/photos/20',
    'https://jsonplaceholder.typicode.com/photos/30',
    'https://jsonplaceholder.typicode.com/photos/40',
    'https://jsonplaceholder.typicode.com/photos/50',
    'https://jsonplaceholder.typicode.com/photos/60',
    'https://jsonplaceholder.typicode.com/photos/70',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (BuildContext context, index) {
            return Image.network(imageList[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => () {},
      ),
    );
  }
}
