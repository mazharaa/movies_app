import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  const AuthModel._();

  factory AuthModel({
    required bool isAuthenticated,
    required String statusMessage,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    bool isAuthenticated = false;
    String statusMessage = '';

    if (json['success'] != null) {
      isAuthenticated = (json['success']) as bool;
    }

    if (json['status_message'] != null) {
      statusMessage = (json['status_message']) as String;
    }

    return AuthModel(
      isAuthenticated: isAuthenticated,
      statusMessage: statusMessage,
    );
  }
}
