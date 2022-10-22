import 'package:flutter/material.dart';
import 'package:netflix_clone_sp_v2/app_settings/colors.dart';
import 'package:netflix_clone_sp_v2/components/movie_widget.dart';

import '../r.dart';

class MovieWithProgress extends StatelessWidget {
  const MovieWithProgress(
      {Key? key, required this.image, required this.progress})
      : super(key: key);
  final String image;
  final double progress;

  @override
  Widget build(BuildContext context) {
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
                MovieWidget(
                  image: image,
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
}
