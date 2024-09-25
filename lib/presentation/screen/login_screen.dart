import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/utils/text_theme_extension.dart';
import 'package:movies_app/core/utils/ui_helper.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
              child: TextField(
                showCursor: false,
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
                ),
              ),
            ),
            SizedBox(height: 20.w),
            SizedBox(
              height: 50.h,
              child: TextField(
                showCursor: false,
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
                ),
              ),
            ),
            SizedBox(height: 20.w),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50.h),
                backgroundColor: ColorConst.blue,
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
      ),
    );
  }
}
