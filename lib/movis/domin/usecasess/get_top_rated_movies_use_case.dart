import 'package:dartz/dartz.dart';
import 'package:movis/movis/domin/entites/movie.dart';
import 'package:movis/movis/domin/reposetroy/base_remove_repositroy.dart';

import '../../../core/error/falier.dart';

class GetTopRatedMoviesUseCase{

  final BaseMoveRepositroy baseRemoveRepositroy ;

  GetTopRatedMoviesUseCase(this.baseRemoveRepositroy);

 Future<Either<Filuar,List<Movie>>> excut()async{
    return await baseRemoveRepositroy.getTopRaatedMovies() ;
  }
}