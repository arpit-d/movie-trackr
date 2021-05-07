import 'package:get_it/get_it.dart';
import 'package:movie_app/business_logic/view_models/movies_screen_view_model.dart';

import 'web_api/web_api.dart';
import 'web_api/web_api_fake.dart';
import 'web_api/web_api_impl.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  // Services
  serviceLocator.registerLazySingleton<WebApi>(() => WebApiImpl());
  //serviceLocator.registerLazySingleton<WebApi>(() => WebApiFake());

  // View models
  serviceLocator
      .registerFactory<MoviesScreenViewModel>(() => MoviesScreenViewModel());
}
