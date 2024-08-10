import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/utils/ui_helper.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorConst.black,
    textTheme: textTheme,
    primaryTextTheme: textTheme.apply(
      bodyColor: ColorConst.white,
      displayColor: ColorConst.white,
      decorationColor: ColorConst.white,
    ),
    appBarTheme: AppBarTheme(
      color: ColorConst.black,
      actionsIconTheme: const IconThemeData(color: ColorConst.white),
      iconTheme: const IconThemeData(color: ColorConst.white),
      titleTextStyle: GoogleFonts.montserrat().copyWith(
        color: ColorConst.white,
        fontWeight: FontWeight.w600,
        fontSize: UiHelper.setSp(16),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorConst.black,
      selectedItemColor: ColorConst.blue,
      unselectedItemColor: ColorConst.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
  );

  static TextTheme textTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 10.sp,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: GoogleFonts.poppins(fontSize: 20.sp),
    titleMedium: GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: GoogleFonts.poppins(fontSize: 16.sp),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.sp),
    bodyMedium: GoogleFonts.poppins(fontSize: 13.sp),
    bodySmall: GoogleFonts.poppins(fontSize: 12.sp),
    labelLarge: GoogleFonts.poppins(fontSize: 11.sp),
    labelMedium: GoogleFonts.poppins(fontSize: 10.sp),
    labelSmall: GoogleFonts.poppins(fontSize: 9.sp),
  ).apply(
    bodyColor: ColorConst.white,
    displayColor: ColorConst.white,
    decorationColor: ColorConst.white,
  );
}
