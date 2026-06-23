import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
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
    initializeDateFormatting();

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
//  fix: Corrección del listado de pelicular (horizontal) y configuración con go_router
//  fix: Construcción del detalle de la pelicula
//  