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
    'status',
    'success',
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

      if (response.data is Map<String, dynamic>) {
        final _response = response.data as Map<String, dynamic>;
        if (_response.containsKey('error')) {
          return _apiResponse.copyWith(
            status: 'Error',
            errorMsg: _response['error'] as String? ?? 'Unknown error',
            data: null,
          );
        }
        if (_response.containsKey('results')) {
          return _apiResponse.copyWith(data: _response['results']);
        }

        return _apiResponse.copyWith(data: _response);
      } else {
        return _apiResponse.copyWith(
          errorMsg: 'Unexpected response format',
          data: null,
        );
      }
    } else if (response.statusCode == 401) {
      return ApiResponseModel(
        status: 'Unauthorized',
        code: response.statusCode,
        errorMsg: response.data['status_message'] as String,
        data: response.data as Map<String, dynamic>,
      );
    } else {
      return ApiResponseModel(
        status: 'Not OK',
        code: response.statusCode,
        errorMsg: 'request not found',
        data: null,
      );
    }
  }
  factory ApiResponseModel.fromDownloadImage(bool isDownloaded) {
    return ApiResponseModel(
      status: isDownloaded ? 'OK' : 'Not OK',
      errorMsg: '',
      data: isDownloaded,
      code: isDownloaded ? 200 : 404,
    );
  }
}
