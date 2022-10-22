import 'package:flutter/material.dart';

import 'movie_widget.dart';

class MovieWithNumber extends StatelessWidget {
  const MovieWithNumber({
    Key? key,
    required this.movieImage,
    required this.numberImage,
  }) : super(key: key);
  final String movieImage;
  final String numberImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: MovieWidget(image: movieImage),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              numberImage,
              height: 82,
            ),
          ),
        ],
      ),
    );
  }
}
