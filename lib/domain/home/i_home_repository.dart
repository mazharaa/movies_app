import 'package:fpdart/fpdart.dart';
import 'package:movies_app/domain/common/poster/poster_model.dart';
import 'package:movies_app/domain/core/app_failure.dart';

abstract class IHomeRepository {
  Future<Either<AppFailure, List<PosterModel>>> nowPlayingList();

  Future<Either<AppFailure, List<PosterModel>>> popularList();

  Future<void> saveImage(String url);
}
