import 'package:dartz/dartz.dart';
import 'package:movis/movis/domin/entites/movie.dart';

import '../../../core/error/falier.dart';

abstract class BaseMoveRepositroy{
  Future<Either<Filuar , List<Movie>>> getNowPlayingMovies() ;
  Future<Either<Filuar,List<Movie>>> getPopularMovies();
  Future<Either<Filuar , List<Movie>>> getTopRaatedMovies();


}