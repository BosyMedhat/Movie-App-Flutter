import 'package:flutter/material.dart';

class MoviesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movies")),
      body: Center(child: Text("Here are your movies!")),
    );
  }
}
