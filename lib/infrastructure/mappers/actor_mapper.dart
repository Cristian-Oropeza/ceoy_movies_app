
import 'package:ceoy_movies_app/domain/entities/actor.dart';
import 'package:ceoy_movies_app/infrastructure/models/moviedb_credits.dart';

class ActorMapper {
  static Actor castToEntity (Cast cast) => Actor(
    id: cast.id, 
    name: cast.name, 
    profilePath: 
      cast.profilePath.isEmpty 
      ? 'https://image.tmdb.org/t/p/w500 ${cast.profilePath}'
      : 'https://iconscout.com/es/icons/sin-perfil', 
    character: cast.character);
}