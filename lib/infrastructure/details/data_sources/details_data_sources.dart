import 'package:injectable/injectable.dart';
import 'package:movies_app/core/common/api_path_constants.dart';
import 'package:movies_app/domain/common/poster/poster_model.dart';
import 'package:movies_app/domain/details/details_model.dart';
import 'package:movies_app/infrastructure/core/api_helper.dart';

@injectable
class DetailsDataSources {
  final ApiHelper _helper;

  DetailsDataSources(this._helper);

  Future<DetailsModel> getDetails(int id) async {
    final response = await _helper.get(
      path: ApiPathConstants.movieDetails(id),
    );

    final rawData = response.data;

    final data = DetailsModel.fromJson(rawData);

    return data;
  }

  Future<List<PosterModel>> getSimilar(int id) async {
    final response = await _helper.get(
      path: ApiPathConstants.similarMovie(id),
    );

    final rawList = response.data as List;

    final list = List.generate(
      rawList.length.clamp(0, 10),
      (i) => PosterModel.fromJson(rawList[i]),
    );

    return list;
  }
}
