import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/views/pages/movie_details.dart';

class MovieItem extends StatelessWidget {
  MovieItem({Key key, @required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
        Expanded(
            child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MovieDetails(
                              movie: Movie(
                                  title: movie.title,
                                  year: movie.year,
                                  director: movie.director,
                                  posterUrl: movie.posterUrl,
                                  synopsis: movie.synopsis),
                            ))),
                child: CachedNetworkImage(
                    placeholder: (context, url) =>
                        Center(child: CircularProgressIndicator()),
                    imageUrl: movie.posterUrl))),
        const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
        Center(
          child: AutoSizeText(
            movie.title,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Klavika'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
        ),
        AutoSizeText(movie.year,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Klavika',
                fontWeight: FontWeight.w300))
      ],
    );
  }
}

/*
GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MovieDetails(
                        movie: Movie(
                            title: 'Cool movie',
                            director: 'Cool director',
                            year: '2018',
                            ratings: '5.0',
                            synopsis: 'Yeah whatever'),
                      ))),
          child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  'https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Best-Horror-Movies-Of-The-Decade.jpg'),
        ),
*/
