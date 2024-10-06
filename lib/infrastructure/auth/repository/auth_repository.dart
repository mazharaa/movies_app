import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/auth/auth_model.dart';
import 'package:movies_app/domain/core/app_failure.dart';
import 'package:movies_app/infrastructure/auth/data_sources/auth_data_sources.dart';

@lazySingleton
class AuthRepository {
  final AuthDataSources _dataSources;

  AuthRepository(
    this._dataSources,
  );

  Future<Either<AppFailure, AuthModel>> loginUser(
    String username,
    String password,
  ) async {
    try {
      await _dataSources.getRequestToken();
      final response = await _dataSources.createSession(username, password);
      await _dataSources.getSessionId();
      await _dataSources.getAccountId();

      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }
}
