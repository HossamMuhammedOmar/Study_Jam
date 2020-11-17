import 'dart:convert';

import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  final imageList = [];
  // final List<String> imageList = [
  //   'https://via.placeholder.com/600/92c952',
  //   'https://via.placeholder.com/600/8985dc',
  //   'https://via.placeholder.com/600/372c93',
  //   'https://via.placeholder.com/600/3a0b95',
  //   'https://via.placeholder.com/600/9e59da',
  //   'https://via.placeholder.com/600/323599',
  //   'https://via.placeholder.com/600/7375af',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: imageList.length > 0
            ? Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ListView.builder(
                  itemCount: imageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildImage(imageList[index]);
                  },
                ),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _addImage(),
      ),
    );
  }

  Widget _buildImage(String image) {
    return Card(
      child: Image.network(image),
    );
  }

  _addImage() async {
    counter++;
    final response =
        await http.get('https://jsonplaceholder.typicode.com/photos/$counter');
    final parsedResponse = json.decode(response.body);
    setState(() {
      imageList.add(parsedResponse['url']);
    });
    print(imageList.length);
  }
}
