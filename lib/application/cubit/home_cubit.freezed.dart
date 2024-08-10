// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  Option<Either<AppFailure, List<PosterModel>>>
      get nowPlayingFailureOrSucceed => throw _privateConstructorUsedError;
  Option<Either<AppFailure, List<PosterModel>>> get popularFailureOrSucceed =>
      throw _privateConstructorUsedError;
  bool get nowPlayingIsLoading => throw _privateConstructorUsedError;
  bool get popularIsLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<PosterModel>>> nowPlayingFailureOrSucceed,
      Option<Either<AppFailure, List<PosterModel>>> popularFailureOrSucceed,
      bool nowPlayingIsLoading,
      bool popularIsLoading});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowPlayingFailureOrSucceed = null,
    Object? popularFailureOrSucceed = null,
    Object? nowPlayingIsLoading = null,
    Object? popularIsLoading = null,
  }) {
    return _then(_value.copyWith(
      nowPlayingFailureOrSucceed: null == nowPlayingFailureOrSucceed
          ? _value.nowPlayingFailureOrSucceed
          : nowPlayingFailureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<PosterModel>>>,
      popularFailureOrSucceed: null == popularFailureOrSucceed
          ? _value.popularFailureOrSucceed
          : popularFailureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<PosterModel>>>,
      nowPlayingIsLoading: null == nowPlayingIsLoading
          ? _value.nowPlayingIsLoading
          : nowPlayingIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      popularIsLoading: null == popularIsLoading
          ? _value.popularIsLoading
          : popularIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<PosterModel>>> nowPlayingFailureOrSucceed,
      Option<Either<AppFailure, List<PosterModel>>> popularFailureOrSucceed,
      bool nowPlayingIsLoading,
      bool popularIsLoading});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowPlayingFailureOrSucceed = null,
    Object? popularFailureOrSucceed = null,
    Object? nowPlayingIsLoading = null,
    Object? popularIsLoading = null,
  }) {
    return _then(_$HomeStateImpl(
      nowPlayingFailureOrSucceed: null == nowPlayingFailureOrSucceed
          ? _value.nowPlayingFailureOrSucceed
          : nowPlayingFailureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<PosterModel>>>,
      popularFailureOrSucceed: null == popularFailureOrSucceed
          ? _value.popularFailureOrSucceed
          : popularFailureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<PosterModel>>>,
      nowPlayingIsLoading: null == nowPlayingIsLoading
          ? _value.nowPlayingIsLoading
          : nowPlayingIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      popularIsLoading: null == popularIsLoading
          ? _value.popularIsLoading
          : popularIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {required this.nowPlayingFailureOrSucceed,
      required this.popularFailureOrSucceed,
      required this.nowPlayingIsLoading,
      required this.popularIsLoading})
      : super._();

  @override
  final Option<Either<AppFailure, List<PosterModel>>>
      nowPlayingFailureOrSucceed;
  @override
  final Option<Either<AppFailure, List<PosterModel>>> popularFailureOrSucceed;
  @override
  final bool nowPlayingIsLoading;
  @override
  final bool popularIsLoading;

  @override
  String toString() {
    return 'HomeState(nowPlayingFailureOrSucceed: $nowPlayingFailureOrSucceed, popularFailureOrSucceed: $popularFailureOrSucceed, nowPlayingIsLoading: $nowPlayingIsLoading, popularIsLoading: $popularIsLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.nowPlayingFailureOrSucceed,
                    nowPlayingFailureOrSucceed) ||
                other.nowPlayingFailureOrSucceed ==
                    nowPlayingFailureOrSucceed) &&
            (identical(
                    other.popularFailureOrSucceed, popularFailureOrSucceed) ||
                other.popularFailureOrSucceed == popularFailureOrSucceed) &&
            (identical(other.nowPlayingIsLoading, nowPlayingIsLoading) ||
                other.nowPlayingIsLoading == nowPlayingIsLoading) &&
            (identical(other.popularIsLoading, popularIsLoading) ||
                other.popularIsLoading == popularIsLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nowPlayingFailureOrSucceed,
      popularFailureOrSucceed, nowPlayingIsLoading, popularIsLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {required final Option<Either<AppFailure, List<PosterModel>>>
          nowPlayingFailureOrSucceed,
      required final Option<Either<AppFailure, List<PosterModel>>>
          popularFailureOrSucceed,
      required final bool nowPlayingIsLoading,
      required final bool popularIsLoading}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  Option<Either<AppFailure, List<PosterModel>>> get nowPlayingFailureOrSucceed;
  @override
  Option<Either<AppFailure, List<PosterModel>>> get popularFailureOrSucceed;
  @override
  bool get nowPlayingIsLoading;
  @override
  bool get popularIsLoading;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
