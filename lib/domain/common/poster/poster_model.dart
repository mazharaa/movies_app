import 'package:freezed_annotation/freezed_annotation.dart';

part 'poster_model.freezed.dart';
part 'poster_model.g.dart';

@freezed
class PosterModel with _$PosterModel {
  const PosterModel._();

  factory PosterModel({
    required int id,
    required String image,
  }) = _PosterModel;

  factory PosterModel.fromJson(Map<String, dynamic> json) =>
      _$PosterModelFromJson(json);
}
