class Movie {
  final String image;
  String? title;
  String id;
  String? trendingNumberImage;
  double progress;
  bool isNew;
  bool isTrending;
  bool isOriginal;

  //TODO: add more data
  Movie({
    required this.id,
    required this.image,
    this.title,
    this.trendingNumberImage,
    this.progress = 0,
    this.isNew = false,
    this.isOriginal = false,
    this.isTrending = false,
  });
}
