import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/core/common/api_key.dart';
import 'package:movies_app/core/common/api_path_constants.dart';

part 'poster_model.freezed.dart';
part 'poster_model.g.dart';

@freezed
class PosterModel with _$PosterModel {
  const PosterModel._();

  factory PosterModel({
    required int id,
    @JsonKey(name: 'poster_path') required String image,
  }) = _PosterModel;

  factory PosterModel.fromJson(Map<String, dynamic> json) =>
      _$PosterModelFromJson(json);

  String get imageUrl =>
      '${ApiPathConstants.imgUrlPrefix}$image?api_key=${ApiKey.key}';
}
