import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/core/env/env.dart';
import 'package:movies_app/core/routes/app_router.dart';

@module
abstract class RegisterModule {
  @singleton
  AppRouter get appRouter => AppRouter();

  Dio dio(Env env) {
    Dio _dio = Dio();
    BaseOptions options = BaseOptions(
      connectTimeout: const Duration(seconds: 12),
      receiveTimeout: const Duration(seconds: 6),
      sendTimeout: const Duration(seconds: 6),
      baseUrl: env.baseUrl,
    );

    _dio.options = options;

    return _dio;
  }
}
