import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/common/poster/poster_model.dart';
import 'package:movies_app/domain/core/app_failure/app_failure.dart';
import 'package:movies_app/domain/details/details_model.dart';
import 'package:movies_app/domain/details/i_details_repository.dart';
import 'package:movies_app/infrastructure/details/data_sources/details_data_sources.dart';

@LazySingleton(as: IDetailsRepository)
class DetailsRepository implements IDetailsRepository {
  final DetailsDataSources _dataSources;

  DetailsRepository(this._dataSources);

  @override
  Future<Either<AppFailure, DetailsModel>> detailsMovie(int id) async {
    try {
      final response = await _dataSources.getDetails(id);

      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<PosterModel>>> similarMovie(int id) async {
    try {
      final response = await _dataSources.getSimilar(id);

      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }
}
