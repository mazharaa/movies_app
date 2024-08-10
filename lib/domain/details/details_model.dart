import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/core/common/api_key.dart';
import 'package:movies_app/core/common/api_path_constants.dart';

part 'details_model.freezed.dart';
// part 'details_model.g.dart';

@freezed
class DetailsModel with _$DetailsModel {
  const DetailsModel._();

  factory DetailsModel({
    required int id,
    required String title,
    @JsonKey(name: 'release_date') required String releaseYear,
    required int runtime,
    @JsonKey(name: 'genres') required String genre,
    required String overview,
    @JsonKey(name: 'poster_path') required String image,
    @JsonKey(name: 'backdrop_path') required String backdrop,
  }) = _DetailsModel;

  factory DetailsModel.fromJson(Map<String, dynamic> json) {
    String genre = '';

    if (json['genres'] != null && (json['genres'] as List).isNotEmpty) {
      genre = (json['genres'][0]['name'] as String);
    }

    String releaseYear = '';

    if (json['release_date'] != null) {
      releaseYear = (json['release_date'] as String).substring(0, 4);
    }

    String image = '';

    if (json['poster_path'] != null) {
      image =
          '${ApiPathConstants.imgUrlPrefix}${json['poster_path']}?api_key=${ApiKey.key}';
    }

    String backdrop = '';

    if (json['backdrop_path'] != null) {
      backdrop =
          '${ApiPathConstants.backdropUrlPrefix}${json['backdrop_path']}?api_key=${ApiKey.key}';
    }

    return DetailsModel(
      id: json['id'] as int,
      title: json['title'] as String,
      releaseYear: releaseYear,
      runtime: json['runtime'] as int,
      genre: genre,
      overview: json['overview'] as String,
      image: image,
      backdrop: backdrop,
    );
  }
}
