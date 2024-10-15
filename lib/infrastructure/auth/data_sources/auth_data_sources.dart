import 'package:injectable/injectable.dart';
import 'package:movies_app/core/common/api_path_constants.dart';
import 'package:movies_app/domain/auth/auth_model.dart';
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

    await _secureStorage.setReqToken(token);
  }

  Future<AuthModel> createSession(String username, String password) async {
    await _secureStorage.setUsername(username);

    final response = await _helper.get(
      path: ApiPathConstants.loginAuth,
      queryParameters: {
        "username": await _secureStorage.username,
        "password": password,
        "request_token": await _secureStorage.reqToken,
      },
    );

    final rawData = response.data as Map<String, dynamic>;

    if (!rawData.containsKey('status_message')) {
      final newEntries = <String, dynamic>{'status_message': 'Authenticated'};
      rawData.addEntries(newEntries.entries);
    }

    final data = AuthModel.fromJson(rawData);

    return data;
  }

  Future<void> getSessionId() async {
    final response = await _helper.get(
      path: ApiPathConstants.createSession,
      queryParameters: {"request_token": await _secureStorage.reqToken},
    );

    final sessionId = response.data["session_id"];

    await _secureStorage.setSessionId(sessionId);
  }

  Future<void> getAccountId() async {
    final response = await _helper.get(
      path: ApiPathConstants.accountDetails,
      queryParameters: {"session_id": await _secureStorage.sessionId},
    );

    final accountId = response.data["id"];

    await _secureStorage.setAccountId(accountId);
  }
}
