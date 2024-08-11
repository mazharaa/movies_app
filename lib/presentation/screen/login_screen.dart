import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/text_theme_extension.dart';
import 'package:movies_app/core/utils/ui_helper.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UiHelper.padding(horizontal: 20.w, bottom: 85.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login to',
              textAlign: TextAlign.center,
              style: context.textTheme.titleLarge,
            ),
            SizedBox(height: 5.h),
            Text(
              'MoviesApp',
              textAlign: TextAlign.center,
              style: context.textTheme.displayLarge?.copyWith(fontSize: 30),
            ),
            SizedBox(height: 20.h),
            const TextField()
          ],
        ),
      ),
    );
  }
}
