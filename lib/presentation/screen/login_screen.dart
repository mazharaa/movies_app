import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/application/auth/auth_cubit.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/routes/app_router.dart';
import 'package:movies_app/core/utils/text_theme_extension.dart';
import 'package:movies_app/core/utils/ui_helper.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () => context.router.maybePop().then(
            (value) {
              authCubit.resetAuth();
            },
          ),
        ),
        title: Text(
          'MoviesApp',
          textAlign: TextAlign.center,
          style: context.textTheme.displayLarge?.copyWith(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: UiHelper.padding(horizontal: 32.w, bottom: 85.h),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            state.isAuthenticate.fold(
              () {
                state.authIsLoading
                    ? WidgetsBinding.instance.addPostFrameCallback((_) {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => Center(
                            child: UiHelper.loading(height: 50.h, width: 50.w),
                          ),
                        );
                      })
                    : null;
              },
              (repsonse) => repsonse.fold(
                (failure) {
                  if (!state.authIsLoading) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.of(context, rootNavigator: true).pop();
                    });
                  }
                  failure.when(
                    fromServerSide: (value) {
                      return WidgetsBinding.instance.addPostFrameCallback((_) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Center(
                              child: Text(
                                value,
                                style: context.textTheme.labelLarge?.copyWith(
                                  color: ColorConst.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                    },
                    unauthorized: (value) {},
                  );
                },
                (response) => context.router.push(const MainRoute()),
              ),
            );
            return Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50.h,
                      child: TextField(
                        showCursor: false,
                        controller: authCubit.usernameController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: ColorConst.darkGrey,
                          filled: true,
                          contentPadding: UiHelper.padding(
                            top: 11.h,
                            horizontal: 16.w,
                            bottom: 15.h,
                          ),
                          hintText: 'Username',
                          hintStyle: context.textTheme.titleSmall?.copyWith(
                            color: ColorConst.lightGrey,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 50.h,
                      child: TextField(
                        showCursor: false,
                        controller: authCubit.passwordController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: ColorConst.darkGrey,
                          filled: true,
                          contentPadding: UiHelper.padding(
                            top: 11.h,
                            horizontal: 16.w,
                            bottom: 15.h,
                          ),
                          hintText: 'Password',
                          hintStyle: context.textTheme.titleSmall?.copyWith(
                            color: ColorConst.lightGrey,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 70.h,
                      child: state.showAuthError
                          ? Center(
                              child: Text(
                                state.authErrorMsg,
                                style: context.textTheme.bodyLarge
                                    ?.copyWith(color: ColorConst.red),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 150,
                  right: 0,
                  left: 0,
                  child: ElevatedButton(
                    onPressed: state.usernnameIsFilled
                        ? () async {
                            authCubit.loginUser(
                              context.read<AuthCubit>().usernameController.text,
                              context.read<AuthCubit>().passwordController.text,
                            );
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50.h),
                      backgroundColor: state.usernnameIsFilled
                          ? ColorConst.blue
                          : ColorConst.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'SIGN IN',
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
