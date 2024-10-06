part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required Option<Either<AppFailure, AuthModel>> isAuthenticate,
    required bool authIsLoading,
    required bool usernnameIsFilled,
    required bool dialogIsShown,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isAuthenticate: none(),
        authIsLoading: false,
        usernnameIsFilled: false,
        dialogIsShown: false,
      );

  AuthState get unmodified => copyWith(
        isAuthenticate: none(),
        authIsLoading: false,
        usernnameIsFilled: false,
        dialogIsShown: false,
      );
}
