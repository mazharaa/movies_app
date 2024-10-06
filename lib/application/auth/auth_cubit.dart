import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/core/utils/ui_helper.dart';
import 'package:movies_app/domain/auth/auth_model.dart';
import 'package:movies_app/domain/core/app_failure.dart';
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

    passwordController = TextEditingController()..addListener(() {});
  }

  void fillUsername(String val) {
    val.isEmpty
        ? emit(state.copyWith(usernnameIsFilled: false))
        : emit(state.copyWith(usernnameIsFilled: true));
  }

  void showsDialog(bool truOrFalse) {
    emit(state.copyWith(dialogIsShown: truOrFalse));
    // showDialog(
    //   context: context,
    //   barrierDismissible: false,
    //   builder: (context) => Center(
    //     child: UiHelper.loading(height: 50.h, width: 50.w),
    //   ),
    // );
  }

  void dismissDialog(bool dialogIsShown, BuildContext context) {
    if (dialogIsShown) {
      Navigator.of(context, rootNavigator: true).pop();
      emit(state.copyWith(dialogIsShown: false));
    }
  }

  Future<void> loginUser(String username, String password) async {
    emit(state.copyWith(
      authIsLoading: true,
      dialogIsShown: true,
    ));

    final authResponse = await _authRepository.loginUser(username, password);

    emit(state.copyWith(
      isAuthenticate: optionOf(authResponse),
      authIsLoading: false,
    ));
  }

  void authFailed() {
    emit(state.copyWith(isAuthenticate: none()));
  }
}
