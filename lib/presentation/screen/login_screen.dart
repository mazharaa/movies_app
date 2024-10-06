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
          onTap: () => context.router.maybePop(),
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
                  if (state.dialogIsShown) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.of(context, rootNavigator: true).pop();
                    });
                  }
                  authCubit.showsDialog(false);
                  failure.when(
                    fromServerSide: (value) {
                      authCubit.authFailed();
                      return WidgetsBinding.instance.addPostFrameCallback((_) {
                        showDialog(
                          context: context,
                          builder: (context) => Center(
                            child: Text(value),
                          ),
                        );
                      });
                    },
                  );
                },
                (response) {
                  if (response.isAuthenticated) {
                    context.router.push(const MainRoute());
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => Center(
                        child: Text(response.statusMessage),
                      ),
                    );
                  }
                },
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
                    SizedBox(height: 20.w),
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
                    SizedBox(height: 20.w),
                    ElevatedButton(
                      onPressed: state.usernnameIsFilled
                          ? () async {
                              authCubit.loginUser(
                                context
                                    .read<AuthCubit>()
                                    .usernameController
                                    .text,
                                context
                                    .read<AuthCubit>()
                                    .passwordController
                                    .text,
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
                  ],
                ),
                // Center(
                //     child: Container(
                //   height: 150.h,
                //   width: 150.w,
                //   decoration: BoxDecoration(
                //     border: Border.all(),
                //     color: ColorConst.lightGrey.withOpacity(0.9),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       UiHelper.loading(height: 50.h, width: 50.w),
                //       SizedBox(height: 20.h),
                //       Text(
                //         'Signing In...',
                //         style: context.textTheme.titleSmall?.copyWith(
                //           color: ColorConst.darkGrey,
                //         ),
                //       ),
                //     ],
                //   ),
                // )),
              ],
            );
          },
        ),
      ),
    );
  }
}
