class Movie {
  final String image;
  final String? title;
  final String id;
  final String? trendingNumberImage;
  final double progress;
  final bool isNew;
  final bool isTrending;
  final bool isOriginal;
  final String? desc;
  final String? trailer;
  //TODO: add more data
  Movie({
    required this.id,
    required this.image,
    this.trailer,
    this.desc,
    this.title,
    this.trendingNumberImage,
    this.progress = 0,
    this.isNew = false,
    this.isOriginal = false,
    this.isTrending = false,
  });
}
