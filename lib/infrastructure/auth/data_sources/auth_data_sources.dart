import 'package:injectable/injectable.dart';
import 'package:movies_app/core/common/api_path_constants.dart';
import 'package:movies_app/infrastructure/core/api_helper.dart';
import 'package:movies_app/infrastructure/storage/secure_storage_controller.dart';

@injectable
class AuthDataSources {
  final ApiHelper _helper;
  final SecureStorageController _secureStorage;

  AuthDataSources(
    this._helper,
    this._secureStorage,
  );

  Future<void> getRequestToken() async {
    final response = await _helper.get(
      path: ApiPathConstants.reqToken,
    );

    final token = response.data["request_token"];

    _secureStorage.setReqToken(token);
  }

  Future<void> createSession(String password) async {
    await _helper.get(
      path: ApiPathConstants.loginAuth,
      queryParameters: {
        "username": _secureStorage.username,
        "password": password,
        "request_token": _secureStorage.reqToken,
      },
    );
  }

  Future<void> getSessionId() async {
    final response = await _helper.get(
      path: ApiPathConstants.createSession,
      queryParameters: {"request_token": _secureStorage.reqToken},
    );

    final sessionId = response.data["session_id"];

    _secureStorage.setSessionId(sessionId);
  }

  Future<void> getAccountId() async {
    final response = await _helper.get(
      path: ApiPathConstants.accountDetails,
      queryParameters: {"session_id": _secureStorage.sessionId},
    );

    final accountId = response.data["id"];

    _secureStorage.setAccountId(accountId);
  }
}
