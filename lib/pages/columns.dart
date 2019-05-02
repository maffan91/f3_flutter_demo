import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/nav-drawer.dart';

class ColumnsPage extends StatelessWidget {
  Widget _buildWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Flutter Columns",
            style: TextStyle(fontSize: 50.0),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.file_download),
          ),
          Image.asset('assets/images/food.jpg')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Columns Layout Demo'),
      ),
      drawer: NavDrawer(),
      body: _buildWidget(),
    );
  }
}
