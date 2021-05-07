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
    _movies.forEach((element) {
      print(element.title ?? element.originalTitle);
    });
  }

  // List<Rate> _rateCache;

  // Future<List<Rate>> fetchExchangeRates() async {
  //   if (_rateCache == null) {
  //     print('getting rates from the web');
  //     final uri = Uri.https(_host, _path);
  //     final results = await http.get(uri, headers: _headers);
  //     final jsonObject = json.decode(results.body);
  //     _rateCache = _createRateListFromRawMap(jsonObject);
  //   } else {
  //     print('getting rates from cache');
  //   }
  //   return _rateCache;
  // }

  // List<Rate> _createRateListFromRawMap(Map jsonObject) {
  //   final Map rates = jsonObject['rates'];
  //   final String base = jsonObject['base'];
  //   List<Rate> list = [];

  //   // include the base currency in the list
  //   list.add(Rate(baseCurrency: base, quoteCurrency: base, exchangeRate: 1.0));

  //   // add all of the quote currency conversion rates
  //   for (var rate in rates.entries) {
  //     list.add(Rate(baseCurrency: base,
  //         quoteCurrency: rate.key,
  //         exchangeRate: rate.value as double));
  //   }

  //   return list;
  // }
}
