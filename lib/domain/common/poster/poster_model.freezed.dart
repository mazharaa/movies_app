// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poster_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PosterModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get backdrop => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosterModelCopyWith<PosterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosterModelCopyWith<$Res> {
  factory $PosterModelCopyWith(
          PosterModel value, $Res Function(PosterModel) then) =
      _$PosterModelCopyWithImpl<$Res, PosterModel>;
  @useResult
  $Res call({int id, String title, String image, String backdrop});
}

/// @nodoc
class _$PosterModelCopyWithImpl<$Res, $Val extends PosterModel>
    implements $PosterModelCopyWith<$Res> {
  _$PosterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
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
abstract class _$$PosterModelImplCopyWith<$Res>
    implements $PosterModelCopyWith<$Res> {
  factory _$$PosterModelImplCopyWith(
          _$PosterModelImpl value, $Res Function(_$PosterModelImpl) then) =
      __$$PosterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String image, String backdrop});
}

/// @nodoc
class __$$PosterModelImplCopyWithImpl<$Res>
    extends _$PosterModelCopyWithImpl<$Res, _$PosterModelImpl>
    implements _$$PosterModelImplCopyWith<$Res> {
  __$$PosterModelImplCopyWithImpl(
      _$PosterModelImpl _value, $Res Function(_$PosterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? backdrop = null,
  }) {
    return _then(_$PosterModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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

class _$PosterModelImpl extends _PosterModel {
  _$PosterModelImpl(
      {required this.id,
      required this.title,
      required this.image,
      required this.backdrop})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String backdrop;

  @override
  String toString() {
    return 'PosterModel(id: $id, title: $title, image: $image, backdrop: $backdrop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.backdrop, backdrop) ||
                other.backdrop == backdrop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, image, backdrop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosterModelImplCopyWith<_$PosterModelImpl> get copyWith =>
      __$$PosterModelImplCopyWithImpl<_$PosterModelImpl>(this, _$identity);
}

abstract class _PosterModel extends PosterModel {
  factory _PosterModel(
      {required final int id,
      required final String title,
      required final String image,
      required final String backdrop}) = _$PosterModelImpl;
  _PosterModel._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get backdrop;
  @override
  @JsonKey(ignore: true)
  _$$PosterModelImplCopyWith<_$PosterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
