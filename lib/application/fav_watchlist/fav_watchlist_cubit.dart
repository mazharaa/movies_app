import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/domain/common/poster/poster_model.dart';

part 'fav_watchlist_state.dart';
part 'fav_watchlist_cubit.freezed.dart';

class FavWatchlistCubit extends Cubit<FavWatchlistState> {
  FavWatchlistCubit() : super(FavWatchlistState.initial());

  void toggleFav(PosterModel movie) {
    List<PosterModel> favList = List.from(state.favMovie);

    if (favList.contains(movie)) {
      favList.removeWhere((element) => element == movie);
    } else {
      favList.add(movie);
    }

    emit(state.copyWith(favMovie: favList));
  }

  void toggleWatchlist(PosterModel movie) {
    List<PosterModel> watchlist = List.from(state.watchlist);

    if (watchlist.contains(movie)) {
      watchlist.removeWhere((element) => element == movie);
    } else {
      watchlist.add(movie);
    }

    emit(state.copyWith(watchlist: watchlist));
  }
}
