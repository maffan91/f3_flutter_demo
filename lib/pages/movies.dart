import '../data/movie-list.dart';
import '../models/movie.dart';
import '../widgets/movie-card.dart';
import '../widgets/nav-drawer.dart';
import 'package:flutter_web/material.dart';

class MoviesPage extends StatelessWidget {
  final List<Movie> movies = MovieList.getMovies();

  Widget _buildMoviesList() {
    return Container(
      child: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            onDismissed: (DismissDirection direction) {
              if (direction == DismissDirection.endToStart) {
                movies.removeAt(index);
              }
            },
            secondaryBackground: Container(
              child: Center(
                child: Text(
                  'Delete',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: Colors.red,
            ),
            background: Container(
              color: Colors.green,
            ),
            child: MovieCard(movie: movies[index]),
            key: UniqueKey(),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Builder Demo'),
      ),
      drawer: NavDrawer(),
      body: _buildMoviesList(),
    );
  }
}
