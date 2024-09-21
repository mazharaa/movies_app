import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

enum _SecureStorageKeys {
  reqToken,
  sessionId,
  accountId,
  username,
}

@lazySingleton
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

  Future<void> setUsername(String username) async {
    await _secureStorage.write(
      key: _SecureStorageKeys.username.name,
      value: username,
    );
  }

  Future<void> setSessionId(String sessionId) async {
    await _secureStorage.write(
      key: _SecureStorageKeys.sessionId.name,
      value: sessionId,
    );
  }

  Future<void> setAccountId(int accountId) async {
    await _secureStorage.write(
      key: _SecureStorageKeys.sessionId.name,
      value: accountId.toString(),
    );
  }

  Future<String> get reqToken async =>
      await _secureStorage.read(key: _SecureStorageKeys.reqToken.name) ?? "";

  Future<String> get sessionId async =>
      await _secureStorage.read(key: _SecureStorageKeys.sessionId.name) ?? "";

  Future<String> get username async =>
      await _secureStorage.read(key: _SecureStorageKeys.username.name) ?? "";

  Future<int> get accountId async {
    final idString = await _secureStorage.read(
          key: _SecureStorageKeys.accountId.name,
        ) ??
        "0";

    var id = int.parse(idString);

    return id;
  }
}
