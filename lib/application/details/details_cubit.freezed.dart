// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsState {
  Option<Either<AppFailure, DetailsModel>> get detailsFailureOrSucceed =>
      throw _privateConstructorUsedError;
  Option<Either<AppFailure, List<PosterModel>>> get similarFailureOrSucceed =>
      throw _privateConstructorUsedError;
  bool get detailsIsLoading => throw _privateConstructorUsedError;
  bool get similarIsLoading => throw _privateConstructorUsedError;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsStateCopyWith<DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res, DetailsState>;
  @useResult
  $Res call(
      {Option<Either<AppFailure, DetailsModel>> detailsFailureOrSucceed,
      Option<Either<AppFailure, List<PosterModel>>> similarFailureOrSucceed,
      bool detailsIsLoading,
      bool similarIsLoading});
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res, $Val extends DetailsState>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailsFailureOrSucceed = null,
    Object? similarFailureOrSucceed = null,
    Object? detailsIsLoading = null,
    Object? similarIsLoading = null,
  }) {
    return _then(_value.copyWith(
      detailsFailureOrSucceed: null == detailsFailureOrSucceed
          ? _value.detailsFailureOrSucceed
          : detailsFailureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, DetailsModel>>,
      similarFailureOrSucceed: null == similarFailureOrSucceed
          ? _value.similarFailureOrSucceed
          : similarFailureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<PosterModel>>>,
      detailsIsLoading: null == detailsIsLoading
          ? _value.detailsIsLoading
          : detailsIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      similarIsLoading: null == similarIsLoading
          ? _value.similarIsLoading
          : similarIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsStateImplCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$DetailsStateImplCopyWith(
          _$DetailsStateImpl value, $Res Function(_$DetailsStateImpl) then) =
      __$$DetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<AppFailure, DetailsModel>> detailsFailureOrSucceed,
      Option<Either<AppFailure, List<PosterModel>>> similarFailureOrSucceed,
      bool detailsIsLoading,
      bool similarIsLoading});
}

/// @nodoc
class __$$DetailsStateImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$DetailsStateImpl>
    implements _$$DetailsStateImplCopyWith<$Res> {
  __$$DetailsStateImplCopyWithImpl(
      _$DetailsStateImpl _value, $Res Function(_$DetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailsFailureOrSucceed = null,
    Object? similarFailureOrSucceed = null,
    Object? detailsIsLoading = null,
    Object? similarIsLoading = null,
  }) {
    return _then(_$DetailsStateImpl(
      detailsFailureOrSucceed: null == detailsFailureOrSucceed
          ? _value.detailsFailureOrSucceed
          : detailsFailureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, DetailsModel>>,
      similarFailureOrSucceed: null == similarFailureOrSucceed
          ? _value.similarFailureOrSucceed
          : similarFailureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<PosterModel>>>,
      detailsIsLoading: null == detailsIsLoading
          ? _value.detailsIsLoading
          : detailsIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      similarIsLoading: null == similarIsLoading
          ? _value.similarIsLoading
          : similarIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailsStateImpl extends _DetailsState {
  const _$DetailsStateImpl(
      {required this.detailsFailureOrSucceed,
      required this.similarFailureOrSucceed,
      required this.detailsIsLoading,
      required this.similarIsLoading})
      : super._();

  @override
  final Option<Either<AppFailure, DetailsModel>> detailsFailureOrSucceed;
  @override
  final Option<Either<AppFailure, List<PosterModel>>> similarFailureOrSucceed;
  @override
  final bool detailsIsLoading;
  @override
  final bool similarIsLoading;

  @override
  String toString() {
    return 'DetailsState(detailsFailureOrSucceed: $detailsFailureOrSucceed, similarFailureOrSucceed: $similarFailureOrSucceed, detailsIsLoading: $detailsIsLoading, similarIsLoading: $similarIsLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsStateImpl &&
            (identical(
                    other.detailsFailureOrSucceed, detailsFailureOrSucceed) ||
                other.detailsFailureOrSucceed == detailsFailureOrSucceed) &&
            (identical(
                    other.similarFailureOrSucceed, similarFailureOrSucceed) ||
                other.similarFailureOrSucceed == similarFailureOrSucceed) &&
            (identical(other.detailsIsLoading, detailsIsLoading) ||
                other.detailsIsLoading == detailsIsLoading) &&
            (identical(other.similarIsLoading, similarIsLoading) ||
                other.similarIsLoading == similarIsLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailsFailureOrSucceed,
      similarFailureOrSucceed, detailsIsLoading, similarIsLoading);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsStateImplCopyWith<_$DetailsStateImpl> get copyWith =>
      __$$DetailsStateImplCopyWithImpl<_$DetailsStateImpl>(this, _$identity);
}

abstract class _DetailsState extends DetailsState {
  const factory _DetailsState(
      {required final Option<Either<AppFailure, DetailsModel>>
          detailsFailureOrSucceed,
      required final Option<Either<AppFailure, List<PosterModel>>>
          similarFailureOrSucceed,
      required final bool detailsIsLoading,
      required final bool similarIsLoading}) = _$DetailsStateImpl;
  const _DetailsState._() : super._();

  @override
  Option<Either<AppFailure, DetailsModel>> get detailsFailureOrSucceed;
  @override
  Option<Either<AppFailure, List<PosterModel>>> get similarFailureOrSucceed;
  @override
  bool get detailsIsLoading;
  @override
  bool get similarIsLoading;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsStateImplCopyWith<_$DetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
