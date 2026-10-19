import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:movie_app/core/network/api/api_service.dart';
import 'package:movie_app/feature/models/movie_model.dart';

class HomeApi {

// Assuming you have a Movie model and constants defined

Future<List<Movie>> getTopRated() async {
  final uri = Uri.https(
  'api.themoviedb.org',
  '/3/movie/top_rated',
  {
    'api_key': '9d7f94be913eddf2db40e317d2f12f36',
  },
);


  try {
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      final decodeData = jsonBody['results'] as List;
      return decodeData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load top-rated movies (Status: ${response.statusCode})');
    }
  } catch (e) {
    throw Exception('Failed to load top-rated movies');
  }
}
Future<List<Movie>> getPopularMovies() async {
    final uri = Uri.https(
  'api.themoviedb.org',
  '/3/movie/popular',
  {
    'api_key': '9d7f94be913eddf2db40e317d2f12f36',
  },
);
    try{
final response = await http.get(uri);
if(response.statusCode == 200){
  final jsonBody=jsonDecode(response.body);
  final decodeData = jsonBody['results'] as List;
  return decodeData.map((movie) => Movie.fromJson(movie)).toList();
    } else{
      throw Exception('Failed to load popular movies');
    } } catch(e){
      throw Exception('Failed to load popular movies: $e');
    }

}
Future<List<Movie>> getReleases() async {
  final uri = Uri.https(
  'api.themoviedb.org',
  '/3/movie/upcoming',
  {
    'api_key': '9d7f94be913eddf2db40e317d2f12f36',
  },
);


  try {
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      final decodeData = jsonBody['results'] as List;
      return decodeData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load release movies (Status: ${response.statusCode})');
    }
  } catch (e) {
    throw Exception('Failed to load release movies');
  }
}
}
