import 'package:ceoy_movies_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/config.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  runApp(
    ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
    );
  }
}
//commits:
//  init: Configuración del proyecto inicial
//  fix: Configuracion de la pantalla principal
//  add: Uso de estructura limpia
//  add: Uso de Slideshow, ListView y cambios de estilos
//