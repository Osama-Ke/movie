import 'package:equatable/equatable.dart';

import '../../../core/utils/enums.dart';
import '../../domin/entites/movie.dart';

class MovieState extends Equatable{

  final List<Movie> NowPlayingMovies ;
  final RequstState NowPlayingState ;
  final String NowPlayingMessage ;

  const MovieState({
    this.NowPlayingMovies = const[],
    this.NowPlayingState = RequstState.Loading,
    this.NowPlayingMessage = "",
  });

  @override
  List<Object?> get props => [NowPlayingMovies , NowPlayingState , NowPlayingMessage];
}