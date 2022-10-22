import 'package:flutter/material.dart';
import 'package:netflix_clone_sp_v2/app_settings//colors.dart';
import 'package:netflix_clone_sp_v2/app_settings//texts.dart';
import '../r.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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

    var listNew = [
      R.images_ritornoalfuturo,
      R.images_themask,
      R.images_witcher,
      R.images_punisher,
      R.images_sense8,
      R.images_daredevil,
      R.images_dark,
      R.images_stranger_things,
      R.images_umbrella_academy,
      R.images_peakyblinders2,
    ];
    var listTrending = [
      R.images_you,
      R.images_thegreathack,
      R.images_heman,
      R.images_nonhomai,
      R.images_formula1,
      R.images_theboldtype,
      R.images_testimonemisterioso,
      R.images_guardianofjustice,
      R.images_mezzanotteinstambul,
      R.images_topboy,
    ];

    var listOriginal = [
      R.images_casadicarta,
      R.images_squidgame,
      R.images_umbrella_academy_2,
      R.images_dontlookup,
      R.images_cattelan,
      R.images_stranger_things,
      R.images_thirteen_reasons_why,
      R.images_crown,
      R.images_atypical,
      R.images_lupin,
    ];
    var listTrendingIndo = [
      Trending(imageNumber: R.images_one, imageMovie: R.images_vikings),
      Trending(imageNumber: R.images_two, imageMovie: R.images_venom),
      Trending(imageNumber: R.images_three, imageMovie: R.images_lucifer),
      Trending(imageNumber: R.images_four, imageMovie: R.images_toyboy),
      Trending(imageNumber: R.images_five, imageMovie: R.images_theadamproject),
      Trending(imageNumber: R.images_six, imageMovie: R.images_thepirates),
      Trending(imageNumber: R.images_seven, imageMovie: R.images_riverdale),
      Trending(imageNumber: R.images_eight, imageMovie: R.images_inventinganna),
      Trending(imageNumber: R.images_nine, imageMovie: R.images_againsttheice),
      Trending(imageNumber: R.images_ten, imageMovie: R.images_manifest),
    ];

    var listContinue = [
      Continue(image: R.images_mrrobot, progress: 0.8),
      Continue(image: R.images_rednotice, progress: 0.2),
      Continue(image: R.images_brooklyne, progress: 0.5),
    ];

    Widget itemMovie(
      String image,
      double? width, //? per permettere di utilizzare il valore null
      double? height,
      bool? margin,
    ) {
      return Container(
        margin: const EdgeInsets.only(right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            image,
            width: 100,
            height: 155,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget itemMovieNumber(String number, String image) {
      return SizedBox(
        height: 165,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25),
              child: itemMovie(image, 115, 165, null),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                number,
                height: 82,
              ),
            ),
          ],
        ),
      );
    }

    Widget itemMovieContinue(String image, double progress) {
      return Container(
        width: 115,
        height: 205,
        margin: const EdgeInsets.only(right: 5),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
        )),
        child: Column(
          children: [
            SizedBox(
              width: 115,
              height: 165,
              child: Stack(
                children: [
                  itemMovie(
                    image,
                    115,
                    165,
                    false,
                  ),
                  Center(
                    child: Image.asset(
                      R.images_ic_play,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
            LinearProgressIndicator(
              minHeight: 5,
              color: redColor,
              value: progress,
              backgroundColor: blackColor2,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.info_outline,
                    size: 25,
                    color: whiteColor,
                  ),
                  Image.asset(
                    R.images_ic_dot,
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
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
                children:
                    listNew.map((e) => itemMovie(e, null, null, true)).toList(),
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
                    .map((e) => itemMovie(e, null, null, true))
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
                    .map((e) => itemMovie(e, 150, 307, true))
                    .toList(),
              ),
            ),
          ),
          title('Top 10 in Best in Star Movies'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: listTrendingIndo
                  .map((e) => itemMovieNumber(e.imageNumber, e.imageMovie))
                  .toList(),
            ),
          ),
          title('Continue Watching '),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Row(
                children: listContinue
                    .map(
                      (e) => itemMovieContinue(
                        e.image,
                        e.progress,
                      ),
                    )
                    .toList()),
          ),
        ],
      ),
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
