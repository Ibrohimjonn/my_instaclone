import 'package:flutter/material.dart';

class MySearch extends StatefulWidget {
  const MySearch({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _MySearchState createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Search'),
      ),
    );
  }
}
