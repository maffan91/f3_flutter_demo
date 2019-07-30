import '../widgets/nav-drawer.dart';
import 'package:flutter_web/material.dart';

class ColumnsPage extends StatelessWidget {
  Widget _buildWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Flutter Columns",
            style: TextStyle(fontSize: 50.0),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.file_download),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'images/food.jpg',
                  fit: BoxFit.scaleDown,
                  height: 468,
                ),
              )
            ],
          )
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
