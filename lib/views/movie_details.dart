import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class MovieDetails extends StatelessWidget {
  MovieDetails({Key key, this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              movie.title,
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              movie.year,
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              movie.director,
              style: TextStyle(fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}
