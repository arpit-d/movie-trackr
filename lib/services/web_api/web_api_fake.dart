import 'package:movie_app/business_logic/models/movies.dart';
import 'web_api.dart';

class WebApiFake implements WebApi {
  @override
  Future<List<MovieModel>> fetchMovies() async {
    List<MovieModel> _movies = [];
    _movies.add(
      MovieModel(
          adult: false,
          genreIds: [
            18,
          ],
          id: 550,
          title: "Fight Club",
          overview:
              "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.",
          popularity: 0.5,
          releaseDate: "1999-10-12",
          revenue: 100853753,
          runtime: 139,
          status: "Released",
          video: false,
          voteAverage: 7.8,
          voteCount: 3439),
    );
    _movies.add(
      MovieModel(
          adult: false,
          genreIds: [
            18,
          ],
          id: 550,
          title: "Fight Club",
          overview:
              "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.",
          popularity: 0.5,
          releaseDate: "1999-10-12",
          revenue: 100853753,
          runtime: 139,
          status: "Released",
          video: false,
          voteAverage: 7.8,
          voteCount: 3439),
    );
    _movies.add(
      MovieModel(
          adult: false,
          genreIds: [
            18,
          ],
          id: 550,
          title: "Fight Club",
          overview:
              "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.",
          popularity: 0.5,
          releaseDate: "1999-10-12",
          revenue: 100853753,
          runtime: 139,
          status: "Released",
          video: false,
          voteAverage: 7.8,
          voteCount: 3439),
    );
    _movies.forEach((element) {
      print(element.title ?? element.originalTitle);
    });
    return _movies;
  }
}
