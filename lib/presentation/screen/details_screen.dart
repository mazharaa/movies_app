import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/utils/text_theme_extension.dart';
import 'package:movies_app/core/utils/ui_helper.dart';

@RoutePage()
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 66.h,
        centerTitle: true,
        title: const Text('Detail'),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 271.h,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 210.94.h,
                    decoration: const BoxDecoration(
                      color: ColorConst.white,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(16),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 151.h,
                    left: 29.w,
                    child: SizedBox(
                      width: 95.w,
                      height: 120.h,
                      child: const Card(
                        color: ColorConst.grey,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 223.h,
                    left: 136.w,
                    child: Container(
                      height: 48.h,
                      width: 210.w,
                      alignment: Alignment.topLeft,
                      child: Text(
                        'data',
                        style: context.textTheme.titleMedium,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  color: ColorConst.fontGrey,
                  size: 16,
                ),
                Text(
                  '  2021',
                  style: GoogleFonts.montserrat().copyWith(
                    fontSize: 12,
                    color: ColorConst.fontGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: 24.w,
                  alignment: Alignment.center,
                  child: const Text(
                    '|',
                    style: TextStyle(fontSize: 16, color: ColorConst.fontGrey),
                  ),
                ),
                Icon(
                  Icons.access_time,
                  color: ColorConst.fontGrey,
                  size: 16,
                ),
                Text(
                  '  148 Minutes',
                  style: GoogleFonts.montserrat().copyWith(
                    fontSize: 12,
                    color: ColorConst.fontGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: 24.w,
                  alignment: Alignment.center,
                  child: const Text(
                    '|',
                    style: TextStyle(fontSize: 16, color: ColorConst.fontGrey),
                  ),
                ),
                Icon(
                  IconData(
                    0xf916,
                    fontFamily: CupertinoIcons.iconFont,
                    fontPackage: CupertinoIcons.iconFontPackage,
                  ),
                  color: ColorConst.fontGrey,
                  size: 16,
                ),
                Text(
                  '  Action',
                  style: GoogleFonts.montserrat().copyWith(
                    fontSize: 12,
                    color: ColorConst.fontGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.h),
            Padding(
              padding: UiHelper.padding(horizontal: 29.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90.h,
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Overview explained',
                      style: context.textTheme.bodySmall,
                    ),
                  ),
                  Text(
                    'More Like This',
                    style: context.textTheme.displaySmall,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              width: double.infinity,
              height: 300.h,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 3,
                  mainAxisSpacing: 8.h,
                  crossAxisSpacing: 5.w,
                ),
                itemCount: 10,
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: UiHelper.padding(top: 0, bottom: 25.h),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 100.w,
                    child: Card(
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                      child: Text('asd'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
