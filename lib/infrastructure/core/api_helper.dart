import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/core/common/api_key.dart';
import 'package:movies_app/infrastructure/common/api_response_model.dart';
import 'package:movies_app/infrastructure/core/api_configuration.dart';
import 'package:movies_app/infrastructure/core/exception.dart';

@lazySingleton
class ApiHelper {
  final Dio _dio;

  ApiHelper(this._dio);

  Future<ApiResponseModel> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Options options = Options(
        headers: {"Authorization": 'Bearer ${ApiKey.accessToken}'},
      );

      final Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );

      return ApiConfiguration.handleApiResponse(response);
    } on SocketException {
      return Future.error(NoInternetException());
    } on DioException catch (e) {
      return ApiConfiguration.handleDioErrorResponse(e);
    } catch (e) {
      return Future.error(UnknownException(e));
    }
  }
}
