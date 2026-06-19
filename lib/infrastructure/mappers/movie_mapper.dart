import 'package:ceoy_movies_app/domain/domain.dart';
import 'package:ceoy_movies_app/infrastructure/models/moviedb/moviedb_detail.dart';
import 'package:ceoy_movies_app/infrastructure/models/moviedb/moviedb_response.dart';

class MovieMapper {
  static Movie movieDbToEntity( MovieDb movieDb ) => Movie(
    adult: movieDb.adult,
    backdropPath: (movieDb.backdropPath.isNotEmpty)
      ? 'https://image.tmdb.org/t/p/w500${ movieDb.backdropPath }'
      : '',
    genreIds: movieDb.genreIds,
    id: movieDb.id,
    originalLanguage: movieDb.originalLanguage,
    originalTitle: movieDb.originalTitle,
    overview: movieDb.overview,
    popularity: movieDb.popularity,
    posterPath: (movieDb.posterPath.isNotEmpty)
      ? 'https://image.tmdb.org/t/p/w500${ movieDb.posterPath }'
      : '',
    releaseDate: movieDb.releaseDate,
    title: movieDb.title,
    video: movieDb.video,
    voteAverage: movieDb.voteAverage,
    voteCount: movieDb.voteCount
  );

  static Movie movieDetailToEntity( MovieDbDetail detail ) => Movie(
    adult: detail.adult,
    backdropPath: (detail.backdropPath.isNotEmpty)
      ? 'https://image.tmdb.org/t/p/w500${ detail.backdropPath }'
      : '',
    genreIds: detail.genres.map((g) => g.id).toList(),
    id: detail.id,
    originalLanguage: detail.originalLanguage,
    originalTitle: detail.originalTitle,
    overview: detail.overview,
    popularity: detail.popularity,
    posterPath: (detail.posterPath.isNotEmpty)
      ? 'https://image.tmdb.org/t/p/w500${ detail.posterPath }'
      : '',
    releaseDate: detail.releaseDate,
    title: detail.title,
    video: detail.video,
    voteAverage: detail.voteAverage,
    voteCount: detail.voteCount
  );

}
