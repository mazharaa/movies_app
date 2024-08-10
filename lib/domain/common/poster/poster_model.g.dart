// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poster_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PosterModelImpl _$$PosterModelImplFromJson(Map<String, dynamic> json) =>
    _$PosterModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['poster_path'] as String,
    );

Map<String, dynamic> _$$PosterModelImplToJson(_$PosterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.image,
    };
