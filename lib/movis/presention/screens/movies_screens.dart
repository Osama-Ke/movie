import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movis/movis/data/datasource/movies_remote_data_source.dart';
import 'package:movis/movis/domin/reposetroy/base_remove_repositroy.dart';
import 'package:movis/movis/presention/controler/movie_bloc.dart';
import 'package:movis/movis/presention/controler/movie_events.dart';
import 'package:movis/movis/presention/controler/movie_state.dart';

import '../../data/repository/movies_repositroy.dart';
import '../../domin/entites/movie.dart';
import '../../domin/usecasess/get_now_playing_movis_use_case.dart';

class MoviesScreens extends StatefulWidget {
  const MoviesScreens({super.key});

  @override
  State<MoviesScreens> createState() => _MoviesScreensState();
}

class _MoviesScreensState extends State<MoviesScreens> {
  List<Movie> movies = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: ( BuildContext context) {
   return MovieBloc()..add(GetNowPlayingMoviesEvents()) ;
    },
      child: BlocBuilder<MovieBloc , MovieState>(
        builder: (context, state) {
          print(state) ;
          return  const Scaffold() ;
        },
      )
    ) ;
  }




}
