import 'package:flutter/material.dart';
import 'package:netflix_clone_sp_v2/app_settings//colors.dart';
import 'package:netflix_clone_sp_v2/app_settings//texts.dart';
import 'package:netflix_clone_sp_v2/components/movie_widget.dart';
import 'package:netflix_clone_sp_v2/components/movie_with_number.dart';
import 'package:netflix_clone_sp_v2/services/movies_service.dart';
import '../components/movie_with_progress.dart';
import '../models/movie.dart';
import '../r.dart';
import '../routes/pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final allMovies = MoviesService.instance.allMovies;
    final listNew = allMovies.where((element) => element.isNew);
    final listTrending = allMovies.where((element) => element.isTrending);
    final listOriginal = allMovies.where((element) => element.isOriginal);
    final listTrendingIndo =
        allMovies.where((element) => element.trendingNumberImage != null);
    final listContinue = allMovies.where((element) => element.progress > 0);

    Widget poster() {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 500,
        child: Stack(
          children: [
            Image.asset(R.images_peakyblinders),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      blackColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      blackColor,
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 12,
                    right: 17,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        R.images_starmovies_logo0,
                        width: 30,
                        height: 30,
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Center(
                child: Text(
                  'Crime Movies • Series a film historic • Drama Movies',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget listaPropria() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Column(
                children: [
                  const Icon(
                    Icons.add,
                    size: 20,
                    color: whiteColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: const Text(
                      'My List',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 90,
                height: 30,
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: whiteColor,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.play_arrow,
                      size: 18,
                      color: blackColor,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        'Play',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(right: 40),
              child: Column(
                children: [
                  const Icon(
                    Icons.info_outline,
                    size: 20,
                    color: whiteColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: const Text(
                      'Info',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget title(String title) {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        child: Text(
          title,
          style: TextStyle(
            color: whiteColor,
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget itemBottomNavigation(
      String icon,
      String name,
      bool active,
    ) {
      var selectedColor = active == true ? whiteColor : inactiveColor;
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            width: 23,
            height: 23,
          ),
          Text(
            name,
            style: TextStyle(
              color: selectedColor,
              fontSize: 8,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              itemBottomNavigation(R.images_ic_home, 'Home', true),
              itemBottomNavigation(
                  R.images_ic_new_and_popular, 'Coming Soon', false),
              itemBottomNavigation(R.images_ic_search, 'Searth', false),
              itemBottomNavigation(R.images_ic_download, 'Download', false),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          poster(),
          listaPropria(),
          title('Popular on Star Movies'),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listNew
                    .map(
                      (e) => MovieWidget(
                        image: e.image,
                      ).wrapWithMovie(e),
                    )
                    .toList(),
              ),
            ),
          ),
          title('AValible New Movies'),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listTrending
                    .map(
                      (e) => MovieWidget(
                        image: e.image,
                      ).wrapWithMovie(e),
                    )
                    .toList(),
              ),
            ),
          ),
          title('Star Movies Animation'),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listOriginal
                    .map(
                      (e) => MovieWidget(
                        image: e.image,
                      ).wrapWithMovie(e),
                    )
                    .toList(),
              ),
            ),
          ),
          title('Top 10 in Best in Star Movies'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: listTrendingIndo
                  .map(
                    (e) => MovieWithNumber(
                      numberImage: e.trendingNumberImage!,
                      movieImage: e.image,
                    ).wrapWithMovie(e),
                  )
                  .toList(),
            ),
          ),
          title('Continue Watching '),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Row(
              children: listContinue
                  .map(
                    (e) => MovieWithProgress(
                      image: e.image,
                      progress: e.progress,
                    ).wrapWithMovie(e),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

extension MovieWidgetExt on Widget {
  Widget wrapWithMovie(Movie e) {
    return InkWell(
      onTap: () {
        MyPages.routes.push('/movie/${e.id}');
      },
      child: this,
    );
  }
}

class Trending {
  final String imageNumber;
  final String imageMovie;
  Trending({
    required this.imageNumber,
    required this.imageMovie,
  });
}

class Continue {
  final String image;
  final double progress;
  Continue({
    required this.image,
    required this.progress,
  });
}
