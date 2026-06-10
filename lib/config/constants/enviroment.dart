import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String get theMovieDbKey => dotenv.env['MOVIEDB_KEY'] ?? 'No hay API Key';
  static String get apiUrl => dotenv.env['API_URL'] ?? 'No hay API URL';
  static String get language => dotenv.env['LANGUAGE'] ?? 'No hay idioma';
}