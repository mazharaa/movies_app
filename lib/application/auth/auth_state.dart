part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required Option<Either<AppFailure, AuthModel>> isAuthenticate,
    required bool authIsLoading,
    required bool usernnameIsFilled,
    required bool passwordIsFilled,
    required bool showAuthError,
    required String authErrorMsg,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isAuthenticate: none(),
        authIsLoading: false,
        usernnameIsFilled: false,
        passwordIsFilled: false,
        showAuthError: false,
        authErrorMsg: '',
      );
}
