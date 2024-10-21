import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/auth/auth_model.dart';
import 'package:movies_app/domain/core/app_failure/app_failure.dart';
import 'package:movies_app/infrastructure/auth/repository/auth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  AuthCubit(this._authRepository) : super(AuthState.initial()) {
    usernameController = TextEditingController()
      ..addListener(() {
        fillUsername(usernameController.text);
      });

    passwordController = TextEditingController()
      ..addListener(() {
        fillPassword(passwordController.text);
      });
  }

  void fillUsername(String val) {
    val.isEmpty
        ? emit(state.copyWith(usernnameIsFilled: false))
        : emit(state.copyWith(usernnameIsFilled: true));
  }

  void fillPassword(String val) {
    val.isEmpty
        ? emit(state.copyWith(passwordIsFilled: false))
        : emit(state.copyWith(passwordIsFilled: true));
  }

  Future<void> loginUser(String username, String password) async {
    emit(state.copyWith(
      authIsLoading: true,
      isAuthenticate: none(),
      showAuthError: false,
    ));

    String message = '';
    final authResponse = await _authRepository.loginUser(username, password);
    authResponse.getLeft().fold(
      () {},
      (t) {
        t.when(
          fromServerSide: (value) {},
          unauthorized: (value) {
            message = value;
          },
        );
      },
    );

    emit(state.copyWith(
      isAuthenticate: optionOf(authResponse),
      authIsLoading: false,
      showAuthError: authResponse.getLeft().isSome(),
      authErrorMsg: message,
    ));
  }

  void resetAuth() {
    usernameController.clear();
    passwordController.clear();
    emit(state.copyWith(
      isAuthenticate: none(),
      showAuthError: false,
      authErrorMsg: '',
    ));
  }
}
