import 'dart:convert';

import 'package:movie_app/business_logic/models/movies.dart';
import 'package:movie_app/services/web_api/web_api.dart';
import 'package:http/http.dart' as http;
import '../../secret.dart';

class WebApiImpl implements WebApi {
  static final String apiKey = API_KEY;
  final String _host = 'api.themoviedb.org';
  final _path = '/3/movie/popular';
  Map<String, dynamic> queryParameters = {'api_key': apiKey};

  List<MovieModel> _movies = [];
  @override
  Future<List<MovieModel>> fetchMovies() async {
    final uri = Uri.https(_host, _path, queryParameters);
    final results = await http.get(uri);
    final jsonObject = json.decode(results.body);
    for (var i in jsonObject['results']) {
      _movies.add(MovieModel.fromJson(i));
    }
    return _movies;
  }
}
