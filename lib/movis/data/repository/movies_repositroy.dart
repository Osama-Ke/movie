
import 'package:dartz/dartz.dart';
import 'package:movis/core/error/excpetion.dart';
import 'package:movis/core/error/falier.dart';
import 'package:movis/movis/data/datasource/movies_remote_data_source.dart';
import 'package:movis/movis/domin/entites/movie.dart';
import 'package:movis/movis/domin/reposetroy/base_remove_repositroy.dart';

class MoivesRepositroy extends BaseMoveRepositroy{
 final BaseMoviesRemoteDataSorce baseMoviesRemoteDataSorce ;


  MoivesRepositroy(this.baseMoviesRemoteDataSorce);

  @override
  Future<Either<Filuar , List<Movie>>> getNowPlayingMovies()async {
 final result =   await baseMoviesRemoteDataSorce.getNowPlayingMovies() ;

 try{
  return Right(result) ;
 } on ServerExcpetion catch(Filuar){
  return Left(ServerFiluar(Filuar.errorMassageModel.statusMessage)) ;
 }

  }

  @override
  Future<Either<Filuar, List<Movie>>> getPopularMovies() async{
   final result = await baseMoviesRemoteDataSorce.getPopularMoves();

   try{
    return Right(result) ;
   } on ServerExcpetion catch(Filuar){
    return Left(ServerFiluar(Filuar.errorMassageModel.statusMessage)) ;
   }
  }

  @override
  Future<Either<Filuar, List<Movie>>> getTopRaatedMovies() async{
   final result = await baseMoviesRemoteDataSorce.getTopRatedMoves();

   try{
return Right(result);
   } on ServerExcpetion catch(Filuar){
    return Left(ServerFiluar(Filuar.errorMassageModel.statusMessage)) ;
   }
  }




}