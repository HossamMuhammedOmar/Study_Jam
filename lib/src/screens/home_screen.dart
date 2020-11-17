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
    'https://via.placeholder.com/600/92c952',
    'https://via.placeholder.com/600/8985dc',
    'https://via.placeholder.com/600/372c93',
    'https://via.placeholder.com/600/3a0b95',
    'https://via.placeholder.com/600/9e59da',
    'https://via.placeholder.com/600/323599',
    'https://via.placeholder.com/600/7375af',
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
          itemBuilder: (BuildContext context, int index) {
            return _buildImage(imageList[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => () {},
      ),
    );
  }

  Widget _buildImage(String image) {
    return Image.network(image);
  }
}
