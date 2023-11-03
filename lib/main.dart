import 'package:flutter/material.dart';
import 'package:movis/movis/domin/entites/movie.dart';
import 'package:movis/movis/presention/screens/movies_screens.dart';

void main() {



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Movies App',

      home: MoviesScreens(),
    );
  }
}

