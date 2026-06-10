import 'package:ceoy_movies_app/domain/domain.dart';
import 'package:ceoy_movies_app/infrastructure/models/moviedb/moviedb_response.dart';

class MovieMapper {
  static Movie movieDbToEntity( MovieDb movieDb ) => Movie(
    adult: movieDb.adult,
    backdropPath: (movieDb.backdropPath != '')
      ? 'https://image.tmdb.org/t/p/w500${ movieDb.backdropPath }'
      : 'https://i.stack.imgur.com/GNhxO.png',
    genreIds: movieDb.genreIds,
    id: movieDb.id,
    originalLanguage: movieDb.originalLanguage,
    originalTitle: movieDb.originalTitle,
    overview: movieDb.overview,
    popularity: movieDb.popularity,
    posterPath: (movieDb.posterPath != '')
      ? 'https://image.tmdb.org/t/p/w500${ movieDb.posterPath }'
      : 'https://i.stack.imgur.com/GNhxO.png',
    releaseDate: movieDb.releaseDate,
    title: movieDb.title,
    video: movieDb.video,
    voteAverage: movieDb.voteAverage,
    voteCount: movieDb.voteCount
  );
}