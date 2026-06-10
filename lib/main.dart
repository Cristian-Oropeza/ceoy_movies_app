import 'package:ceoy_movies_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'presentation/screens/screens.dart';
import 'config/theme/app_theme.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
    );
  }
}

// git commit -m "add: Uso de estructura limpia"