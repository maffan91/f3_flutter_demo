import 'package:flutter/material.dart';
import 'package:flutter_demo/models/movie.dart';
import 'package:flutter_demo/widgets/nav-drawer.dart';

class StatelessPage extends StatelessWidget {
  final Movie movie;

  const StatelessPage({this.movie});

  Widget _buildWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.network(
            movie.imageUrl,
            height: 460,
          ),
          Center(
            child: Text(movie.title,
                style: TextStyle(
                  fontSize: 35,
                )),
          ),
          Center(
            child: Text(movie.genre, style: TextStyle(fontSize: 20)),
          ),
          Center(
            child: Text(movie.year, style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget Demo'),
      ),
      drawer: NavDrawer(),
      body: _buildWidget(),
    );
  }
}
