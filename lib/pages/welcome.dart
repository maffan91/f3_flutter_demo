import '../widgets/nav-drawer.dart';
import 'package:flutter_web/material.dart';

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
            'Welcome to Flutter Demo',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
