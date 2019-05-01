import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Flutter Demo',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/food.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          ListTile(
            leading: Icon(Icons.bookmark_border),
            title: Text('Stateless Widget'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, 'stateless_widget'),
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Stateful Widget'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, 'stateful_widget'),
          ),
          ListTile(
            leading: Icon(Icons.view_headline),
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
