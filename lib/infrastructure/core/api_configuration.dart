import 'package:dio/dio.dart';
import 'package:movies_app/infrastructure/common/api_response_model.dart';
import 'package:movies_app/infrastructure/core/exception.dart';

class ApiConfiguration {
  const ApiConfiguration._();

  static BaseOptions dioBaseOptions(String baseUrl) => BaseOptions(
        connectTimeout: const Duration(seconds: 12),
        receiveTimeout: const Duration(seconds: 6),
        sendTimeout: const Duration(seconds: 6),
        headers: null,
        baseUrl: baseUrl,
      );

  static Future<ApiResponseModel> handleApiResponse(Response response) async {
    if (!ApiResponseModel.isFormatValid(response)) {
      return Future.error(ApiResponseNotValidException());
    }

    final model = ApiResponseModel.fromJson(response);

    return model;
  }

  static Future<ApiResponseModel> handleDioErrorResponse(
      DioException error) async {
    switch (error.type) {
      case DioExceptionType.badResponse:
        if (ApiResponseModel.isFormatValid(error.response!.data)) {
          return handleApiResponse(error.response!);
        }
        break;
      case DioExceptionType.connectionTimeout:
        return Future.error(TimeoutException());
      case DioExceptionType.sendTimeout:
        return Future.error(TimeoutException());
      case DioExceptionType.receiveTimeout:
        return Future.error(TimeoutException());
      default:
        return Future.error(TimeoutException());
    }
    return Future.error(TimeoutException());
  }
}
