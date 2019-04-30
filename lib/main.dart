import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/auth.dart';
import 'package:flutter_demo/pages/columns.dart';
import 'package:flutter_demo/pages/movies.dart';
import 'package:flutter_demo/pages/my-stateless-widget.dart';
import 'package:flutter_demo/pages/rows.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      home: AuthPage(),
      routes: {
        'form': (BuildContext context) => AuthPage(),
        'statelesswidget': (BuildContext context) => MyStatelessWidget(),
        'movies': (BuildContext context) => MoviesPage(),
        'rows': (BuildContext context) => RowsPage(),
        'columns': (BuildContext context) => ColumnsPage()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
          ),
        ),
        body: AuthPage());
  }
}
