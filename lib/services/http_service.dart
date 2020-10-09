import 'dart:convert';

import 'package:movie_app/data/movies_list.dart';
import 'package:movie_app/models/movie.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/services/secrets_service.dart';

class HttpService {
  static const String OMDB_API_MOVIES_URL = 'http://www.omdbapi.com/';
  static const String OMDB_API_POSTERS_URL = 'http://img.omdbapi.com/';

  static Future<List<Movie>> fetchMovies(
      {List<String> movieTitles = moviesListByTitle}) async {
    String apiKey = await SecretsService.getAPIKey();

    return Future.wait(movieTitles.map((title) async {
      final response = await http
          .get(Uri.encodeFull('$OMDB_API_MOVIES_URL?apikey=$apiKey&t=$title'));

      if (response.statusCode == 200) {
        final movie = Movie.fromJson(jsonDecode(response.body));
        print(movie);
        return movie;
      } else {
        throw Exception('Failed to fetch one or more movies');
      }
    }).toList());
  }
}
