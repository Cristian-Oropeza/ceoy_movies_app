import 'package:ceoy_movies_app/infrastructure/infrastuctura.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl( MoviedbDatasourceImpl() );
});