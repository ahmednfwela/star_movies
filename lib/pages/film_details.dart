import 'package:flutter/material.dart';
import 'package:netflix_clone_sp_v2/services/movies_service.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:collection/collection.dart';
import '../models/movie.dart';

class FilmDetails extends StatefulWidget {
  const FilmDetails({
    Key? key,
    required this.movieId,
  }) : super(key: key);
  final String movieId;

  @override
  State<FilmDetails> createState() => _FilmDetailsState();
}

class _FilmDetailsState extends State<FilmDetails> {
  YoutubePlayerController? controller;
  Movie? movie;
  String? title;

  @override
  void initState() {
    super.initState();
    movie = MoviesService.instance.getMovieById(widget.movieId);
    final trailerUrl = movie?.trailer ??
        MoviesService.instance.allMovies
            .map((e) => e.trailer)
            .whereNotNull()
            .firstOrNull;
    if (trailerUrl != null) {
      final videoId = YoutubePlayer.convertUrlToId(trailerUrl);
      controller = YoutubePlayerController(
        initialVideoId: videoId!,
      );
    }
    title = movie?.title ??
        MoviesService.instance.allMovies
            .map((e) => e.title)
            .whereNotNull()
            .firstOrNull;
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final m = movie;

    return Scaffold(
      body: SafeArea(
        child: m == null
            ? const Text('404 - Movie not found')
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          m.image,
                          fit: BoxFit.contain,
                          width: 150,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            children: [
                              if (title != null)
                                Text(
                                  title!,
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              const SizedBox(height: 8),
                              if (m.desc != null)
                                Text(
                                  m.desc!,
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    if (controller != null)
                      YoutubePlayer(
                        controller: controller!,
                      ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
      ),
    );
  }
}
