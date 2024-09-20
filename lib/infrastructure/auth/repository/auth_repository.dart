import 'package:movies_app/infrastructure/auth/data_sources/auth_data_sources.dart';

class AuthRepository {
  final AuthDataSources _dataSources;

  AuthRepository(
    this._dataSources,
  );

  Future<void> loginUser(
    String password,
  ) async {
    _dataSources.getRequestToken();
    _dataSources.createSession(password);
    _dataSources.getSessionId();
    _dataSources.getAccountId();
  }
}
