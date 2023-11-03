import 'package:dio/dio.dart';
import 'package:movis/core/error/excpetion.dart';
import 'package:movis/core/network/api_constanc.dart';
import 'package:movis/core/network/error_massage_model.dart';
import 'package:movis/movis/data/model/movie_model.dart';
import 'package:movis/movis/domin/entites/movie.dart';

abstract class BaseMoviesRemoteDataSorce{

  Future<List<MoviesModel>> getNowPlayingMovies() ;
  Future<List<MoviesModel>> getPopularMoves();
  Future<List<MoviesModel>> getTopRatedMoves();
}

class MoviesRemoteDataSorce extends BaseMoviesRemoteDataSorce{
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get(
ApiConstanc.nowPlayingMoviesPath
    );
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));

    }
    else{
      throw ServerExcpetion(errorMassageModel: ErrorMassageModel.fromJson(response.data)) ;
    }
  }



  @override
  Future<List<MoviesModel>> getPopularMoves() async {
  final reponse = await Dio().get(ApiConstanc.popularMoviesPath) ;

  if(reponse.statusCode == 200 ){
    return List<MoviesModel>.from((reponse.data["results"] as List).map((e) => MoviesModel.fromJson(e))) ;
  }else {
    throw ServerExcpetion(errorMassageModel: ErrorMassageModel.fromJson(reponse.data)) ;
  }

  }

  @override
  Future<List<MoviesModel>> getTopRatedMoves()async {
 final response = await Dio().get(ApiConstanc.topRatedMoviesPath) ;

 if(response.statusCode == 200){
   return List<MoviesModel>.from((response.data["results"] as List).map((e) => MoviesModel.fromJson(e))) ;

 }
 else {
   throw ServerExcpetion(errorMassageModel: ErrorMassageModel.fromJson(response.data)) ;
 }
  }
}
