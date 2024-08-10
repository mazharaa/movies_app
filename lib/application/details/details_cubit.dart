import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/common/poster/poster_model.dart';
import 'package:movies_app/domain/core/app_failure.dart';
import 'package:movies_app/domain/details/details_model.dart';
import 'package:movies_app/domain/details/i_details_repository.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

@injectable
class DetailsCubit extends Cubit<DetailsState> {
  final IDetailsRepository _iDetailsRepository;

  DetailsCubit(this._iDetailsRepository) : super(DetailsState.initial());

  Future<void> showsDetails(int id) async {
    emit(state.copyWith(
      detailsIsLoading: true,
      similarIsLoading: true,
    ));

    final detailsResponse = await _iDetailsRepository.detailsMovie(id);
    final similarResponse = await _iDetailsRepository.similarMovie(id);

    emit(state.copyWith(
      detailsFailureOrSucceed: optionOf(detailsResponse),
      similarFailureOrSucceed: optionOf(similarResponse),
      detailsIsLoading: false,
      similarIsLoading: false,
    ));
  }
}
