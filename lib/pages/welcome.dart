import 'package:flutter_web/material.dart';
import '../widgets/nav-drawer.dart';

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
