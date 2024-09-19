import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum _SecureStorageKeys {
  reqToken,
  sessionId,
  username,
  password,
}

class SecureStorageController {
  static late final FlutterSecureStorage _secureStorage;

  static void init() {
    _secureStorage = const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
      iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
    );
  }

  Future<void> setReqToken(String reqToken) async {
    await _secureStorage.write(
      key: _SecureStorageKeys.reqToken.name,
      value: reqToken,
    );
  }

  Future<void> setUserLogin(String username, String password) async {
    await _secureStorage.write(
      key: _SecureStorageKeys.username.name,
      value: username,
    );

    await _secureStorage.write(
      key: _SecureStorageKeys.password.name,
      value: password,
    );
  }

  Future<void> setSessionId(String sessionId) async {
    await _secureStorage.write(
      key: _SecureStorageKeys.sessionId.name,
      value: sessionId,
    );
  }

  Future<String> get reqToken async =>
      await _secureStorage.read(key: _SecureStorageKeys.reqToken.name) ?? "";

  Future<String> get username async =>
      await _secureStorage.read(key: _SecureStorageKeys.username.name) ?? "";

  Future<String> get password async =>
      await _secureStorage.read(key: _SecureStorageKeys.password.name) ?? "";

  Future<String> get sessionId async =>
      await _secureStorage.read(key: _SecureStorageKeys.sessionId.name) ?? "";
}
