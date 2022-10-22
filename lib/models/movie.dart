class Movie {
  final String image;
  String? title;
  String id;
  String? trendingNumberImage;
  double progress;
  bool isNew;
  bool isTrending;
  bool isOriginal;
  String? desc;
  //TODO: add more data
  Movie({
    required this.id,
    required this.image,
    this.desc,
    this.title,
    this.trendingNumberImage,
    this.progress = 0,
    this.isNew = false,
    this.isOriginal = false,
    this.isTrending = false,
  });
}
