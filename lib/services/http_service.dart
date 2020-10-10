import 'dart:convert';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:http/http.dart';
import 'package:movie_app/data/movies_list.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/services/secrets_service.dart';

class HttpService {
  static const String OMDB_API_MOVIES_URL = 'http://www.omdbapi.com/';
  static const String OMDB_API_POSTERS_URL = 'http://img.omdbapi.com/';

  static Future<List<Movie>> fetchMovies(
      {List<String> movieTitles = moviesListByTitle}) async {
    String apiKey = await SecretsService.getAPIKey();

    return Future.wait(movieTitles.map((title) async {
      final movieUri =
          Uri.encodeFull('$OMDB_API_MOVIES_URL?apikey=$apiKey&t=$title');

      final response = await getMovieData(movieUri);

      if (response.statusCode == 200) {
        final movie = Movie.fromJson(jsonDecode(response.body));
        return movie;
      } else {
        throw Exception('Failed to fetch one or more movies');
      }
    }).toList());
  }

  static Future<Response> getMovieData(String movieUri) async {
    var file = await DefaultCacheManager().getSingleFile(movieUri);
    if (file != null && await file.exists()) {
      var res = await file.readAsString();
      return Response(res, 200);
    }
    return Response(null, 404);
  }
}
