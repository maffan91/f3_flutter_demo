import './data/movie-list.dart';
import './pages/animation.dart';
import './pages/auth.dart';
import './pages/columns.dart';
import './pages/movies.dart';
import './pages/rows.dart';
import './pages/stateful.dart';
import './pages/stateless.dart';
import './pages/welcome.dart';
import 'package:flutter_web/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        brightness: Brightness.light,
        primaryColor: Colors.green,
      ),
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
        'columns': (BuildContext context) => ColumnsPage(),
        'animation': (BuildContext context) => AnimationPage()
      },
    );
  }
}
