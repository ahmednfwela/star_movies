import 'package:flutter/material.dart';
import 'package:netflix_clone_sp_v2/services/movies_service.dart';

class FilmDetails extends StatelessWidget {
  const FilmDetails({
    Key? key,
    required this.movieId,
  }) : super(key: key);
  final String movieId;

  @override
  Widget build(BuildContext context) {
    final movie = MoviesService.instance.getMovieById(movieId);
    return Scaffold(
      body: movie == null
          ? const Text('404 - Movie not found')
          : SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    movie.image,
                    width: 100,
                    height: 50,
                  ),
                  SizedBox(),
                  if (movie.title != null) Text(movie.title!),
                  SizedBox(),
                  if (movie.desc != null) Text(movie.desc!)
                ],
              ),
            ),
    );
  }
}
