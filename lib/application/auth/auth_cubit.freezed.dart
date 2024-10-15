// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  Option<Either<AppFailure, AuthModel>> get isAuthenticate =>
      throw _privateConstructorUsedError;
  bool get authIsLoading => throw _privateConstructorUsedError;
  bool get usernnameIsFilled => throw _privateConstructorUsedError;
  bool get showAuthError => throw _privateConstructorUsedError;
  String get authErrorMsg => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {Option<Either<AppFailure, AuthModel>> isAuthenticate,
      bool authIsLoading,
      bool usernnameIsFilled,
      bool showAuthError,
      String authErrorMsg});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticate = null,
    Object? authIsLoading = null,
    Object? usernnameIsFilled = null,
    Object? showAuthError = null,
    Object? authErrorMsg = null,
  }) {
    return _then(_value.copyWith(
      isAuthenticate: null == isAuthenticate
          ? _value.isAuthenticate
          : isAuthenticate // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, AuthModel>>,
      authIsLoading: null == authIsLoading
          ? _value.authIsLoading
          : authIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      usernnameIsFilled: null == usernnameIsFilled
          ? _value.usernnameIsFilled
          : usernnameIsFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      showAuthError: null == showAuthError
          ? _value.showAuthError
          : showAuthError // ignore: cast_nullable_to_non_nullable
              as bool,
      authErrorMsg: null == authErrorMsg
          ? _value.authErrorMsg
          : authErrorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<AppFailure, AuthModel>> isAuthenticate,
      bool authIsLoading,
      bool usernnameIsFilled,
      bool showAuthError,
      String authErrorMsg});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticate = null,
    Object? authIsLoading = null,
    Object? usernnameIsFilled = null,
    Object? showAuthError = null,
    Object? authErrorMsg = null,
  }) {
    return _then(_$AuthStateImpl(
      isAuthenticate: null == isAuthenticate
          ? _value.isAuthenticate
          : isAuthenticate // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, AuthModel>>,
      authIsLoading: null == authIsLoading
          ? _value.authIsLoading
          : authIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      usernnameIsFilled: null == usernnameIsFilled
          ? _value.usernnameIsFilled
          : usernnameIsFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      showAuthError: null == showAuthError
          ? _value.showAuthError
          : showAuthError // ignore: cast_nullable_to_non_nullable
              as bool,
      authErrorMsg: null == authErrorMsg
          ? _value.authErrorMsg
          : authErrorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl extends _AuthState {
  const _$AuthStateImpl(
      {required this.isAuthenticate,
      required this.authIsLoading,
      required this.usernnameIsFilled,
      required this.showAuthError,
      required this.authErrorMsg})
      : super._();

  @override
  final Option<Either<AppFailure, AuthModel>> isAuthenticate;
  @override
  final bool authIsLoading;
  @override
  final bool usernnameIsFilled;
  @override
  final bool showAuthError;
  @override
  final String authErrorMsg;

  @override
  String toString() {
    return 'AuthState(isAuthenticate: $isAuthenticate, authIsLoading: $authIsLoading, usernnameIsFilled: $usernnameIsFilled, showAuthError: $showAuthError, authErrorMsg: $authErrorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isAuthenticate, isAuthenticate) ||
                other.isAuthenticate == isAuthenticate) &&
            (identical(other.authIsLoading, authIsLoading) ||
                other.authIsLoading == authIsLoading) &&
            (identical(other.usernnameIsFilled, usernnameIsFilled) ||
                other.usernnameIsFilled == usernnameIsFilled) &&
            (identical(other.showAuthError, showAuthError) ||
                other.showAuthError == showAuthError) &&
            (identical(other.authErrorMsg, authErrorMsg) ||
                other.authErrorMsg == authErrorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuthenticate, authIsLoading,
      usernnameIsFilled, showAuthError, authErrorMsg);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required final Option<Either<AppFailure, AuthModel>> isAuthenticate,
      required final bool authIsLoading,
      required final bool usernnameIsFilled,
      required final bool showAuthError,
      required final String authErrorMsg}) = _$AuthStateImpl;
  const _AuthState._() : super._();

  @override
  Option<Either<AppFailure, AuthModel>> get isAuthenticate;
  @override
  bool get authIsLoading;
  @override
  bool get usernnameIsFilled;
  @override
  bool get showAuthError;
  @override
  String get authErrorMsg;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
