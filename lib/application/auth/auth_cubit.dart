import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/core/app_failure.dart';
import 'package:movies_app/infrastructure/auth/repository/auth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(AuthState.initial());

  Future<void> fillUsername() async {
    emit(state.copyWith(usernnameIsFilled: true));
  }

  Future<void> loginUser(String username, String password) async {
    emit(state.copyWith(
      authIsLoading: true,
    ));

    final authResponse = await _authRepository.loginUser(password);

    emit(state.copyWith(
      isAuthenticate: optionOf(authResponse),
      authIsLoading: false,
    ));
  }
}
