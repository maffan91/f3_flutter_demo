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
        title: Text('Column Layout'),
      ),
      drawer: NavDrawer(),
      body: _buildWidget(),
    );
  }
}
