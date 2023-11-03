import 'package:equatable/equatable.dart';

abstract class MovieEvents extends Equatable {
  const MovieEvents();

  @override
  List<Object> get props => [];

}

class GetNowPlayingMoviesEvents extends MovieEvents{}

class GetPopularMoviesEvents extends MovieEvents{}

class GetTopRatedMoviesEvents extends MovieEvents{}