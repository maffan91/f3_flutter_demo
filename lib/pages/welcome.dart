import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/nav-drawer.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      drawer: NavDrawer(),
      body: Container(
        child: Center(
          child: Text(
            'Welcome to Flutter',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
