import 'package:flutter/material.dart';
import 'package:movie_app/views/pages/movie_details.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:movie_app/models/movie.dart';

class MovieItem extends StatelessWidget {
  MovieItem({Key key, this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
        const Text(
          'Title',
          style: TextStyle(fontSize: 18.0),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
        ),
        const Text('Year', style: TextStyle(fontSize: 16.0))
      ],
    );
  }
}
