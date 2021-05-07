import 'package:movie_app/business_logic/models/movies.dart';

abstract class WebApi {
  Future<List<MovieModel>> fetchMovies();
}
