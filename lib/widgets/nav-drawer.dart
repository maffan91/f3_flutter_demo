import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(color: Colors.green),
          ),
          ListTile(
            leading: Icon(Icons.bookmark_border),
            title: Text('Stateless Widget'),
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Stateful Widget'),
          ),
          ListTile(
            leading: Icon(Icons.line_weight),
            title: Text('Rows'),
            onTap: () => Navigator.pushReplacementNamed(context, 'rows'),
          ),
          ListTile(
            leading: Icon(Icons.view_column),
            title: Text('Columns'),
            onTap: () => Navigator.pushReplacementNamed(context, 'columns'),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('List Builder'),
            onTap: () => Navigator.pushReplacementNamed(context, 'movies'),
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Forms'),
            onTap: () => Navigator.pushReplacementNamed(context, 'form'),
          ),
          Container(
            // decoration: BoxDecoration(
            //     border: Border(
            //   bottom: BorderSide(width: 1),
            //   top: BorderSide(width: 1),
            //   left: BorderSide(width: 1),
            //   right: BorderSide(width: 1),
            // )),
            child: ListTile(
              leading: Icon(Icons.wallpaper),
              title: Text('Animations'),
            ),
          ),
        ],
      ),
    );
  }
}
