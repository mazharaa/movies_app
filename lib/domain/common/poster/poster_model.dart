import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/core/common/api_key.dart';
import 'package:movies_app/core/common/api_path_constants.dart';

part 'poster_model.freezed.dart';
// part 'poster_model.g.dart';

@freezed
class PosterModel with _$PosterModel {
  const PosterModel._();

  factory PosterModel({
    required int id,
    required String image,
  }) = _PosterModel;

  factory PosterModel.fromJson(Map<String, dynamic> json) {
    String image = '';

    if (json['poster_path'] != null) {
      image =
          '${ApiPathConstants.imgUrlPrefix}${json['poster_path']}?api_key=${ApiKey.key}';
    }

    return PosterModel(
      id: json['id'] as int,
      image: image,
    );
  }
}
