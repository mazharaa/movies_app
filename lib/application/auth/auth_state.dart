part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required Option<Either<AppFailure, bool>> isAuthenticate,
    required bool authIsLoading,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isAuthenticate: none(),
        authIsLoading: false,
      );

  AuthState get unmodified => copyWith(
        isAuthenticate: none(),
        authIsLoading: false,
      );
}
