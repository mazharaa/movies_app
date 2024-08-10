// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseYear => throw _privateConstructorUsedError;
  int get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'genres')
  String get genre => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdrop => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsModelCopyWith<DetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsModelCopyWith<$Res> {
  factory $DetailsModelCopyWith(
          DetailsModel value, $Res Function(DetailsModel) then) =
      _$DetailsModelCopyWithImpl<$Res, DetailsModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'release_date') String releaseYear,
      int runtime,
      @JsonKey(name: 'genres') String genre,
      String overview,
      @JsonKey(name: 'poster_path') String image,
      @JsonKey(name: 'backdrop_path') String backdrop});
}

/// @nodoc
class _$DetailsModelCopyWithImpl<$Res, $Val extends DetailsModel>
    implements $DetailsModelCopyWith<$Res> {
  _$DetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? releaseYear = null,
    Object? runtime = null,
    Object? genre = null,
    Object? overview = null,
    Object? image = null,
    Object? backdrop = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      releaseYear: null == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      backdrop: null == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsModelImplCopyWith<$Res>
    implements $DetailsModelCopyWith<$Res> {
  factory _$$DetailsModelImplCopyWith(
          _$DetailsModelImpl value, $Res Function(_$DetailsModelImpl) then) =
      __$$DetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'release_date') String releaseYear,
      int runtime,
      @JsonKey(name: 'genres') String genre,
      String overview,
      @JsonKey(name: 'poster_path') String image,
      @JsonKey(name: 'backdrop_path') String backdrop});
}

/// @nodoc
class __$$DetailsModelImplCopyWithImpl<$Res>
    extends _$DetailsModelCopyWithImpl<$Res, _$DetailsModelImpl>
    implements _$$DetailsModelImplCopyWith<$Res> {
  __$$DetailsModelImplCopyWithImpl(
      _$DetailsModelImpl _value, $Res Function(_$DetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? releaseYear = null,
    Object? runtime = null,
    Object? genre = null,
    Object? overview = null,
    Object? image = null,
    Object? backdrop = null,
  }) {
    return _then(_$DetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      releaseYear: null == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      backdrop: null == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailsModelImpl extends _DetailsModel {
  _$DetailsModelImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'release_date') required this.releaseYear,
      required this.runtime,
      @JsonKey(name: 'genres') required this.genre,
      required this.overview,
      @JsonKey(name: 'poster_path') required this.image,
      @JsonKey(name: 'backdrop_path') required this.backdrop})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'release_date')
  final String releaseYear;
  @override
  final int runtime;
  @override
  @JsonKey(name: 'genres')
  final String genre;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String image;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdrop;

  @override
  String toString() {
    return 'DetailsModel(id: $id, title: $title, releaseYear: $releaseYear, runtime: $runtime, genre: $genre, overview: $overview, image: $image, backdrop: $backdrop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.releaseYear, releaseYear) ||
                other.releaseYear == releaseYear) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.backdrop, backdrop) ||
                other.backdrop == backdrop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, releaseYear, runtime,
      genre, overview, image, backdrop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsModelImplCopyWith<_$DetailsModelImpl> get copyWith =>
      __$$DetailsModelImplCopyWithImpl<_$DetailsModelImpl>(this, _$identity);
}

abstract class _DetailsModel extends DetailsModel {
  factory _DetailsModel(
          {required final int id,
          required final String title,
          @JsonKey(name: 'release_date') required final String releaseYear,
          required final int runtime,
          @JsonKey(name: 'genres') required final String genre,
          required final String overview,
          @JsonKey(name: 'poster_path') required final String image,
          @JsonKey(name: 'backdrop_path') required final String backdrop}) =
      _$DetailsModelImpl;
  _DetailsModel._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'release_date')
  String get releaseYear;
  @override
  int get runtime;
  @override
  @JsonKey(name: 'genres')
  String get genre;
  @override
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String get image;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdrop;
  @override
  @JsonKey(ignore: true)
  _$$DetailsModelImplCopyWith<_$DetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
