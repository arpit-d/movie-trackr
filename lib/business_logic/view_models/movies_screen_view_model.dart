import 'package:flutter/foundation.dart';
import 'package:movie_app/business_logic/models/movies.dart';
import 'package:movie_app/services/locator.dart';
import '/services/web_api/web_api.dart';

class MoviesScreenViewModel extends ChangeNotifier {
  final WebApi _webService = serviceLocator<WebApi>();
  List<MovieModel> _movies = [];
  void loadData() async {
    _movies = await _webService.fetchMovies();
    print(_movies);
    notifyListeners();
  }

  List<MovieModel> get movies => _movies;
}
