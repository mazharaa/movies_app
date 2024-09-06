part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    required Option<Either<AppFailure, List<PosterModel>>>
        nowPlayingFailureOrSucceed,
    required Option<Either<AppFailure, List<PosterModel>>>
        popularFailureOrSucceed,
    required Option<Either<AppFailure, List<PosterModel>>>
        topRatedFailureOrSucceed,
    required bool nowPlayingIsLoading,
    required bool popularIsLoading,
    required bool topRatedIsLoading,
    required int currentCarousel,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        nowPlayingFailureOrSucceed: none(),
        popularFailureOrSucceed: none(),
        topRatedFailureOrSucceed: none(),
        nowPlayingIsLoading: false,
        popularIsLoading: false,
        topRatedIsLoading: false,
        currentCarousel: 0,
      );

  HomeState get unmodified => copyWith(
        nowPlayingFailureOrSucceed: none(),
        popularFailureOrSucceed: none(),
        topRatedFailureOrSucceed: none(),
        nowPlayingIsLoading: false,
        popularIsLoading: false,
        topRatedIsLoading: false,
        currentCarousel: 0,
      );
}
