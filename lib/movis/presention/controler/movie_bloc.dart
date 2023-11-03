import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movis/core/utils/enums.dart';
import 'package:movis/movis/data/datasource/movies_remote_data_source.dart';
import 'package:movis/movis/domin/reposetroy/base_remove_repositroy.dart';
import 'package:movis/movis/domin/usecasess/get_now_playing_movis_use_case.dart';
import 'package:movis/movis/presention/controler/movie_events.dart';
import 'package:movis/movis/presention/controler/movie_state.dart';

import '../../data/repository/movies_repositroy.dart';

class MovieBloc extends Bloc<MovieEvents, MovieState> {
  MovieBloc() : super(const MovieState()) {
    on<GetNowPlayingMoviesEvents>((event, emit) async {
      BaseMoviesRemoteDataSorce baseMoviesRemoteDataSorce =
          MoviesRemoteDataSorce();
      BaseMoveRepositroy baseMoveRepositroy =
          MoivesRepositroy(baseMoviesRemoteDataSorce);
      final result =
          await GetNowPlayingMoviesUseCase(baseMoveRepositroy).excut();
      emit(const MovieState(NowPlayingState: RequstState.Loaded));
      result.fold(
          (l) => emit(MovieState(
                NowPlayingState: RequstState.error,
                NowPlayingMessage: l.massage,
              )),
          (r) => emit(MovieState(
              NowPlayingMovies: r, NowPlayingState: RequstState.Loaded)));
    });
  }
}
