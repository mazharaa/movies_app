import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/utils/text_theme_extension.dart';
import 'package:movies_app/core/utils/ui_helper.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 50.h),
          const Icon(
            Icons.person,
            size: 150,
            color: ColorConst.grey,
          ),
          SizedBox(height: 21.h),
          Text(
            'Username',
            style: context.textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: UiHelper.padding(horizontal: 25.w),
            child: Text(
              'Your Favorite',
              style: context.textTheme.titleSmall,
            ),
          ),
          SizedBox(
            height: 210.h,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 144.62.w,
                  child: GestureDetector(
                    child: const Card(
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 10.w),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: UiHelper.padding(horizontal: 25.w),
            child: Text(
              'Your Watchlist',
              style: context.textTheme.titleSmall,
            ),
          ),
          SizedBox(
            height: 210.h,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 144.62.w,
                  child: GestureDetector(
                    child: const Card(
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 10.w),
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
