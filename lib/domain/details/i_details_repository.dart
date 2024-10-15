import 'package:fpdart/fpdart.dart';
import 'package:movies_app/domain/common/poster/poster_model.dart';
import 'package:movies_app/domain/core/app_failure/app_failure.dart';
import 'package:movies_app/domain/details/details_model.dart';

abstract class IDetailsRepository {
  Future<Either<AppFailure, DetailsModel>> detailsMovie(int id);

  Future<Either<AppFailure, List<PosterModel>>> similarMovie(int id);
}
