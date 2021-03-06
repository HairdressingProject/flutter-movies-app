import 'package:flutter/foundation.dart';

class Movie {
  const Movie(
      {@required this.title,
      this.year,
      this.director,
      this.ratings,
      this.synopsis,
      this.posterUrl});

  final String title;
  final String year;
  final String director;
  final String ratings;
  final String synopsis;
  final String posterUrl;

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json['Title'],
        year: json['Year'],
        director: json['Director'],
        synopsis: json['Plot'],
        posterUrl: json['Poster']);
  }

  @override
  String toString() {
    return '$title ($year) - Directed by $director';
  }
}
