import 'package:flutter/material.dart';
import 'package:flutter_tech_interview/infrastructure/core/dio_config.dart';

import 'injection.dart';
import 'presentation/splash/splash_screen.dart';

void main() {
  configureSingleton();
  getIt<DioConfig>().initInterceptors();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech interview',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
