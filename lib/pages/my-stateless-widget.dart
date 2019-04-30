import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/nav-drawer.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      drawer: NavDrawer(),
    );
  }
}
