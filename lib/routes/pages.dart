import 'package:go_router/go_router.dart';
import 'package:netflix_clone_sp_v2/pages/film_details.dart';
import 'package:netflix_clone_sp_v2/pages/home_page.dart';
import 'package:netflix_clone_sp_v2/pages/splash_page.dart';
import 'package:netflix_clone_sp_v2/routes/routes.dart';

import '../pages/profile_page.dart';

class MyPages {
  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: MyRoutes.splashPage,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: MyRoutes.homePage,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: MyRoutes.movieDetails,
        builder: (context, state) => FilmDetails(
          movieId: state.params['movieId']!,
        ),
      ),
    ],
  );
}
