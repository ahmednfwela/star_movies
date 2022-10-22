import 'package:netflix_clone_sp_v2/models/movie.dart';
import 'package:netflix_clone_sp_v2/r.dart';
import 'package:uuid/uuid.dart';
import 'package:collection/collection.dart';

class MoviesService {
  static final MoviesService instance = MoviesService._();
  MoviesService._();

  Movie? getMovieById(String id) {
    return allMovies.firstWhereOrNull((element) => element.id == id);
  }

  final _uuid = const Uuid();
  String getNewId() {
    return _uuid.v4();
  }

  //TODO: add data
  late final allMovies = <Movie>[
    //New movies
    Movie(id: getNewId(), image: R.images_ritornoalfuturo, isNew: true),
    Movie(
        id: getNewId(),
        title: 'The Mask',
        image: R.images_themask,
        isNew: true),
    Movie(id: getNewId(), image: R.images_witcher, isNew: true),
    Movie(id: getNewId(), image: R.images_punisher, isNew: true),
    Movie(id: getNewId(), image: R.images_sense8, isNew: true),
    Movie(id: getNewId(), image: R.images_daredevil, isNew: true),
    Movie(id: getNewId(), image: R.images_dark, isNew: true),
    Movie(id: getNewId(), image: R.images_stranger_things, isNew: true),
    Movie(id: getNewId(), image: R.images_umbrella_academy, isNew: true),
    Movie(id: getNewId(), image: R.images_peakyblinders2, isNew: true),
    //Trending movies
    Movie(id: getNewId(), image: R.images_you, isTrending: true),
    Movie(id: getNewId(), image: R.images_thegreathack, isTrending: true),
    Movie(id: getNewId(), image: R.images_heman, isTrending: true),
    Movie(id: getNewId(), image: R.images_nonhomai, isTrending: true),
    Movie(id: getNewId(), image: R.images_formula1, isTrending: true),
    Movie(id: getNewId(), image: R.images_theboldtype, isTrending: true),
    Movie(
        id: getNewId(), image: R.images_testimonemisterioso, isTrending: true),
    Movie(id: getNewId(), image: R.images_guardianofjustice, isTrending: true),
    Movie(
        id: getNewId(), image: R.images_mezzanotteinstambul, isTrending: true),
    Movie(id: getNewId(), image: R.images_topboy, isTrending: true),
    //Original
    Movie(id: getNewId(), image: R.images_casadicarta, isOriginal: true),
    Movie(id: getNewId(), image: R.images_squidgame, isOriginal: true),
    Movie(id: getNewId(), image: R.images_umbrella_academy_2, isOriginal: true),
    Movie(id: getNewId(), image: R.images_dontlookup, isOriginal: true),
    Movie(id: getNewId(), image: R.images_cattelan, isOriginal: true),
    Movie(id: getNewId(), image: R.images_stranger_things, isOriginal: true),
    Movie(
        id: getNewId(), image: R.images_thirteen_reasons_why, isOriginal: true),
    Movie(id: getNewId(), image: R.images_crown, isOriginal: true),
    Movie(id: getNewId(), image: R.images_atypical, isOriginal: true),
    Movie(id: getNewId(), image: R.images_lupin, isOriginal: true),
    //Trending With Number
    Movie(
        id: getNewId(),
        trendingNumberImage: R.images_one,
        image: R.images_vikings),
    Movie(
        id: getNewId(),
        trendingNumberImage: R.images_two,
        image: R.images_venom),
    Movie(
        id: getNewId(),
        trendingNumberImage: R.images_three,
        image: R.images_lucifer),
    Movie(
        id: getNewId(),
        trendingNumberImage: R.images_four,
        image: R.images_toyboy),
    Movie(
        id: getNewId(),
        trendingNumberImage: R.images_five,
        image: R.images_theadamproject),
    Movie(
        id: getNewId(),
        trendingNumberImage: R.images_six,
        image: R.images_thepirates),
    Movie(
        id: getNewId(),
        trendingNumberImage: R.images_seven,
        image: R.images_riverdale),
    Movie(
        id: getNewId(),
        trendingNumberImage: R.images_eight,
        image: R.images_inventinganna),
    Movie(
        id: getNewId(),
        trendingNumberImage: R.images_nine,
        image: R.images_againsttheice),
    Movie(
        id: getNewId(),
        trendingNumberImage: R.images_ten,
        image: R.images_manifest),

    //continue
    Movie(id: getNewId(), image: R.images_mrrobot, progress: 0.8),
    Movie(id: getNewId(), image: R.images_rednotice, progress: 0.2),
    Movie(id: getNewId(), image: R.images_brooklyne, progress: 0.5),
  ];
}
