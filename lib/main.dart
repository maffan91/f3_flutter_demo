import 'package:flutter/material.dart';
import 'package:flutter_demo/data/movie-list.dart';
import 'package:flutter_demo/pages/auth.dart';
import 'package:flutter_demo/pages/columns.dart';
import 'package:flutter_demo/pages/movies.dart';
import 'package:flutter_demo/pages/rows.dart';
import 'package:flutter_demo/pages/stateful.dart';
import 'package:flutter_demo/pages/stateless.dart';
import 'package:flutter_demo/pages/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.green,
          primarySwatch: Colors.yellow),
      // home: WelcomePage(),
      routes: {
        '/': (BuildContext context) => WelcomePage(),
        'form': (BuildContext context) => AuthPage(),
        'stateless_widget': (BuildContext context) => StatelessPage(
              movie: MovieList.getSingleMovie(),
            ),
        'stateful_widget': (BuildContext context) => StatefulPage(),
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
