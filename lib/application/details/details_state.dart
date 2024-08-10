part of 'details_cubit.dart';

@freezed
class DetailsState with _$DetailsState {
  const DetailsState._();

  const factory DetailsState({
    required Option<Either<AppFailure, DetailsModel>> detailsFailureOrSucceed,
    required Option<Either<AppFailure, List<PosterModel>>>
        similarFailureOrSucceed,
    required bool detailsIsLoading,
    required bool similarIsLoading,
  }) = _DetailsState;

  factory DetailsState.initial() => DetailsState(
        detailsFailureOrSucceed: none(),
        similarFailureOrSucceed: none(),
        detailsIsLoading: false,
        similarIsLoading: false,
      );

  DetailsState get unmodified => copyWith(
        detailsFailureOrSucceed: none(),
        similarFailureOrSucceed: none(),
        detailsIsLoading: false,
        similarIsLoading: false,
      );
}
