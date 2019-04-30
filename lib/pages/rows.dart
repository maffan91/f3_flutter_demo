import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/nav-drawer.dart';

class RowsPage extends StatelessWidget {
  Column _buildButton(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget _buildWidget() {
      return Container(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(color, Icons.call, 'CALL'),
            _buildButton(color, Icons.near_me, 'ROUTE'),
            _buildButton(color, Icons.share, 'SHARE'),
          ],
        ),
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Rows Layout'),
        ),
        drawer: NavDrawer(),
        body: Container(
          child: _buildWidget(),
        ));
  }
}
