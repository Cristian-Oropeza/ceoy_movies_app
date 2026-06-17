import 'package:animate_do/animate_do.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:ceoy_movies_app/domain/domain.dart';
import 'package:flutter/material.dart';

class MoviesSlideshow extends StatelessWidget {
  final List<Movie> movies;
  const MoviesSlideshow({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return movies.isNotEmpty
        ? FadeIn(
            child: SizedBox(
              height: 250,
              width: double.infinity,
              child: ClipRect(
                child: Swiper(
                  scale: 0.9,
                  viewportFraction: 0.8,
                  autoplay: true,
                  autoplayDelay: 4000,
                  duration: 600,
                  pagination: SwiperPagination(
                    margin: const EdgeInsets.only(top: 210),
                    builder: DotSwiperPaginationBuilder(
                      activeColor: colors.primary,
                      color: colors.secondary.withOpacity(0.4),
                      size: 5.0,
                      activeSize: 7.0,
                      space: 3.0,
                    ),
                  ),
                  itemCount: movies.length,
                  itemBuilder: (context, index) => _Slide(movie: movies[index]),
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}

class _Slide extends StatelessWidget {
  final Movie movie;
  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(offset: Offset(0, 10), blurRadius: 10, color: Colors.black45),
      ],
    );

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 20),
      child: DecoratedBox(
        decoration: decoration,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: GestureDetector(
            onTap: () {},
            child: movie.backdropPath.trim().isEmpty
                ? const Placeholder()
                : Image.network(
                    movie.backdropPath,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) =>
                        const Placeholder(),
                  ),
          ),
        ),
      ),
    );
  }
}
