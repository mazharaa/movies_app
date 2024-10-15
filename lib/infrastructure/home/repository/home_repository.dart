import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/common/poster/poster_model.dart';
import 'package:movies_app/domain/core/app_failure/app_failure.dart';
import 'package:movies_app/domain/home/i_home_repository.dart';
import 'package:movies_app/infrastructure/home/data_sources/home_data_sources.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final HomeDataSources _dataSources;

  HomeRepository(this._dataSources);

  @override
  Future<Either<AppFailure, List<PosterModel>>> nowPlayingList() async {
    try {
      final response = await _dataSources.getNowPlaying();

      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<PosterModel>>> popularList() async {
    try {
      final response = await _dataSources.getPopular();

      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<PosterModel>>> topRatedList() async {
    try {
      final response = await _dataSources.getTopRated();

      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<PosterModel>>> trendingList() async {
    try {
      final response = await _dataSources.getTrending();

      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  @override
  Future<void> saveImage(String url) async {
    await _dataSources.saveImage(url);
  }
}
