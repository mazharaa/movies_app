import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_model.freezed.dart';

@freezed
class ApiResponseModel with _$ApiResponseModel {
  const factory ApiResponseModel({
    required String status,
    @Default('') String errorMsg,
    @Default(0) int? code,
    dynamic data,
  }) = _ApiResponseModel;

  const ApiResponseModel._();

  static List<String> validResponseKeys = [
    'results',
    'id',
    'original_title',
    'overview',
    'poster_path',
  ];

  static bool isFormatValid(dynamic data) {
    if (data is Map<String, dynamic>) {
      return data.keys.any(
        (resKey) => validResponseKeys.any(
          (validResKey) => resKey == validResKey,
        ),
      );
    }
    return false;
  }

  factory ApiResponseModel.fromJson(Response response) {
    if (response.statusCode == 200) {
      final _apiResponse = ApiResponseModel(
        status: 'OK',
        code: response.statusCode,
        errorMsg: '',
      );

      final _response = response.data as Map<String, dynamic>?;

      if (_response == null) {
        return _apiResponse.copyWith(
          data: null,
          errorMsg: 'cannot retrieve data',
        );
      }

      return _apiResponse.copyWith(data: _response);
    } else {
      return ApiResponseModel(
        status: 'Not OK',
        code: response.statusCode,
        errorMsg: 'request not found',
        data: null,
      );
    }
  }
}
