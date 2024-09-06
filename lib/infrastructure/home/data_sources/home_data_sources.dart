import 'package:injectable/injectable.dart';
import 'package:movies_app/core/common/api_path_constants.dart';
import 'package:movies_app/domain/common/poster/poster_model.dart';
import 'package:movies_app/infrastructure/core/api_helper.dart';

@injectable
class HomeDataSources {
  final ApiHelper _helper;

  HomeDataSources(this._helper);

  Future<List<PosterModel>> getNowPlaying() async {
    final response = await _helper.get(
      path: ApiPathConstants.nowPlaying,
    );

    final rawList = response.data as List;

    final list = List.generate(
      rawList.length.clamp(0, 6),
      (i) => PosterModel.fromJson(rawList[i]),
    );

    return list;
  }

  Future<List<PosterModel>> getPopular() async {
    final response = await _helper.get(
      path: ApiPathConstants.popular,
    );

    final rawList = response.data as List;

    final list = List.generate(
      rawList.length.clamp(0, 20),
      (i) => PosterModel.fromJson(rawList[i]),
    );

    return list;
  }

  Future<List<PosterModel>> getTopRated() async {
    final response = await _helper.get(
      path: ApiPathConstants.topRated,
    );

    final rawList = response.data as List;

    final list = List.generate(
      rawList.length.clamp(0, 20),
      (i) => PosterModel.fromJson(rawList[i]),
    );

    return list;
  }

  Future<void> saveImage(String url) async {
    await _helper.saveImage(url);
  }
}
