// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fav_watchlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavWatchlistState {
  List<PosterModel> get favMovie => throw _privateConstructorUsedError;
  List<PosterModel> get watchlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavWatchlistStateCopyWith<FavWatchlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavWatchlistStateCopyWith<$Res> {
  factory $FavWatchlistStateCopyWith(
          FavWatchlistState value, $Res Function(FavWatchlistState) then) =
      _$FavWatchlistStateCopyWithImpl<$Res, FavWatchlistState>;
  @useResult
  $Res call({List<PosterModel> favMovie, List<PosterModel> watchlist});
}

/// @nodoc
class _$FavWatchlistStateCopyWithImpl<$Res, $Val extends FavWatchlistState>
    implements $FavWatchlistStateCopyWith<$Res> {
  _$FavWatchlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favMovie = null,
    Object? watchlist = null,
  }) {
    return _then(_value.copyWith(
      favMovie: null == favMovie
          ? _value.favMovie
          : favMovie // ignore: cast_nullable_to_non_nullable
              as List<PosterModel>,
      watchlist: null == watchlist
          ? _value.watchlist
          : watchlist // ignore: cast_nullable_to_non_nullable
              as List<PosterModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavWatchlistStateImplCopyWith<$Res>
    implements $FavWatchlistStateCopyWith<$Res> {
  factory _$$FavWatchlistStateImplCopyWith(_$FavWatchlistStateImpl value,
          $Res Function(_$FavWatchlistStateImpl) then) =
      __$$FavWatchlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PosterModel> favMovie, List<PosterModel> watchlist});
}

/// @nodoc
class __$$FavWatchlistStateImplCopyWithImpl<$Res>
    extends _$FavWatchlistStateCopyWithImpl<$Res, _$FavWatchlistStateImpl>
    implements _$$FavWatchlistStateImplCopyWith<$Res> {
  __$$FavWatchlistStateImplCopyWithImpl(_$FavWatchlistStateImpl _value,
      $Res Function(_$FavWatchlistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favMovie = null,
    Object? watchlist = null,
  }) {
    return _then(_$FavWatchlistStateImpl(
      favMovie: null == favMovie
          ? _value._favMovie
          : favMovie // ignore: cast_nullable_to_non_nullable
              as List<PosterModel>,
      watchlist: null == watchlist
          ? _value._watchlist
          : watchlist // ignore: cast_nullable_to_non_nullable
              as List<PosterModel>,
    ));
  }
}

/// @nodoc

class _$FavWatchlistStateImpl extends _FavWatchlistState {
  const _$FavWatchlistStateImpl(
      {required final List<PosterModel> favMovie,
      required final List<PosterModel> watchlist})
      : _favMovie = favMovie,
        _watchlist = watchlist,
        super._();

  final List<PosterModel> _favMovie;
  @override
  List<PosterModel> get favMovie {
    if (_favMovie is EqualUnmodifiableListView) return _favMovie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favMovie);
  }

  final List<PosterModel> _watchlist;
  @override
  List<PosterModel> get watchlist {
    if (_watchlist is EqualUnmodifiableListView) return _watchlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watchlist);
  }

  @override
  String toString() {
    return 'FavWatchlistState(favMovie: $favMovie, watchlist: $watchlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavWatchlistStateImpl &&
            const DeepCollectionEquality().equals(other._favMovie, _favMovie) &&
            const DeepCollectionEquality()
                .equals(other._watchlist, _watchlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favMovie),
      const DeepCollectionEquality().hash(_watchlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavWatchlistStateImplCopyWith<_$FavWatchlistStateImpl> get copyWith =>
      __$$FavWatchlistStateImplCopyWithImpl<_$FavWatchlistStateImpl>(
          this, _$identity);
}

abstract class _FavWatchlistState extends FavWatchlistState {
  const factory _FavWatchlistState(
      {required final List<PosterModel> favMovie,
      required final List<PosterModel> watchlist}) = _$FavWatchlistStateImpl;
  const _FavWatchlistState._() : super._();

  @override
  List<PosterModel> get favMovie;
  @override
  List<PosterModel> get watchlist;
  @override
  @JsonKey(ignore: true)
  _$$FavWatchlistStateImplCopyWith<_$FavWatchlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
