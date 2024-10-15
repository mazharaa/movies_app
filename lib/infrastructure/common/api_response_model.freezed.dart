// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResponseModel {
  String get status => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  /// Create a copy of ApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiResponseModelCopyWith<ApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseModelCopyWith<$Res> {
  factory $ApiResponseModelCopyWith(
          ApiResponseModel value, $Res Function(ApiResponseModel) then) =
      _$ApiResponseModelCopyWithImpl<$Res, ApiResponseModel>;
  @useResult
  $Res call({String status, String errorMsg, int? code, dynamic data});
}

/// @nodoc
class _$ApiResponseModelCopyWithImpl<$Res, $Val extends ApiResponseModel>
    implements $ApiResponseModelCopyWith<$Res> {
  _$ApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMsg = null,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResponseModelImplCopyWith<$Res>
    implements $ApiResponseModelCopyWith<$Res> {
  factory _$$ApiResponseModelImplCopyWith(_$ApiResponseModelImpl value,
          $Res Function(_$ApiResponseModelImpl) then) =
      __$$ApiResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String errorMsg, int? code, dynamic data});
}

/// @nodoc
class __$$ApiResponseModelImplCopyWithImpl<$Res>
    extends _$ApiResponseModelCopyWithImpl<$Res, _$ApiResponseModelImpl>
    implements _$$ApiResponseModelImplCopyWith<$Res> {
  __$$ApiResponseModelImplCopyWithImpl(_$ApiResponseModelImpl _value,
      $Res Function(_$ApiResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMsg = null,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ApiResponseModelImpl extends _ApiResponseModel {
  const _$ApiResponseModelImpl(
      {required this.status, this.errorMsg = '', this.code = 0, this.data})
      : super._();

  @override
  final String status;
  @override
  @JsonKey()
  final String errorMsg;
  @override
  @JsonKey()
  final int? code;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ApiResponseModel(status: $status, errorMsg: $errorMsg, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMsg, code,
      const DeepCollectionEquality().hash(data));

  /// Create a copy of ApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseModelImplCopyWith<_$ApiResponseModelImpl> get copyWith =>
      __$$ApiResponseModelImplCopyWithImpl<_$ApiResponseModelImpl>(
          this, _$identity);
}

abstract class _ApiResponseModel extends ApiResponseModel {
  const factory _ApiResponseModel(
      {required final String status,
      final String errorMsg,
      final int? code,
      final dynamic data}) = _$ApiResponseModelImpl;
  const _ApiResponseModel._() : super._();

  @override
  String get status;
  @override
  String get errorMsg;
  @override
  int? get code;
  @override
  dynamic get data;

  /// Create a copy of ApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseModelImplCopyWith<_$ApiResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
