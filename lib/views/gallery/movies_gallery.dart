import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/services/http_service.dart';

import 'movie_item.dart';

class MoviesGallery extends StatefulWidget {
  MoviesGallery({Key key}) : super(key: key);

  @override
  _MoviesGalleryState createState() => _MoviesGalleryState();
}

class _MoviesGalleryState extends State<MoviesGallery> {
  Future<List<Movie>> _movies;

  @override
  void initState() {
    super.initState();
    _movies = HttpService.fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Movie>>(
        future: _movies,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Expanded(
                child: Scrollbar(
                    child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 50.0,
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        children: List.generate(
                            snapshot.data.length,
                            (index) => Center(
                                child: MovieItem(
                                    movie: Movie(
                                        title: snapshot.data[index].title,
                                        director: snapshot.data[index].director,
                                        year: snapshot.data[index].year,
                                        synopsis: snapshot.data[index].synopsis,
                                        posterUrl: snapshot
                                            .data[index].posterUrl)))))));
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          return CircularProgressIndicator();
        });
  }
}
