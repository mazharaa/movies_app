part of 'fav_watchlist_cubit.dart';

@freezed
class FavWatchlistState with _$FavWatchlistState {
  const FavWatchlistState._();

  const factory FavWatchlistState({
    required List<PosterModel> favMovie,
    required List<PosterModel> watchlist,
  }) = _FavWatchlistState;

  factory FavWatchlistState.initial() => const FavWatchlistState(
        favMovie: [],
        watchlist: [],
      );

  FavWatchlistState get unmodified => copyWith(
        favMovie: [],
        watchlist: [],
      );

  bool isFav(PosterModel movie) {
    return favMovie.contains(movie);
  }

  bool isListed(PosterModel movie) {
    return watchlist.contains(movie);
  }

  // factory FavWatchlistState.fromMap(Map<String, dynamic> map) {
  //   return FavWatchlistState(favMovie: favMovie, watchlist: watchlist)
  // }
}
