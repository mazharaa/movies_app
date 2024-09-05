import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/common/poster/poster_model.dart';
import 'package:movies_app/domain/core/app_failure.dart';
import 'package:movies_app/domain/home/i_home_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final IHomeRepository _iHomeRepository;

  HomeCubit(this._iHomeRepository) : super(HomeState.initial()) {
    showsPosters();
  }

  Future<void> showsPosters() async {
    emit(state.copyWith(
      nowPlayingIsLoading: true,
      popularIsLoading: true,
    ));

    final nowPLayingResponse = await _iHomeRepository.nowPlayingList();
    final popularResponse = await _iHomeRepository.popularList();

    emit(state.copyWith(
      nowPlayingIsLoading: false,
      popularIsLoading: false,
      nowPlayingFailureOrSucceed: optionOf(nowPLayingResponse),
      popularFailureOrSucceed: optionOf(popularResponse),
    ));
  }

  Future<void> downloadImage(String url) async {
    await _iHomeRepository.saveImage(url);
  }

  void carouselIndex(int index) {
    emit(state.copyWith(currentCarousel: index));
  }
}
