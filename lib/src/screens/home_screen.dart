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
  final List<String> imageList = [];

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
                width: MediaQuery.of(context).size.width * 0.9,
                child: ListView.builder(
                  // itemCount: imageList.length,
                  itemBuilder: (context, index) {
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
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Card(
        child: Image.network(image),
      ),
    );
  }

  _addImage() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/photos/1');

    final parsedResponse = jsonDecode(response.body);
    imageList.add(parsedResponse['url']);
    print(imageList.length);
  }
}
