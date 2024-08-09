import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/utils/text_theme_extension.dart';
import 'package:movies_app/core/utils/ui_helper.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What do you want to watch?',
          style: context.textTheme.titleMedium,
        ),
        Container(
          height: 70.h,
          alignment: Alignment.centerLeft,
          child: const Text(
            'Now Playing',
          ),
        ),
        SizedBox(
          height: 210.h,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) => SizedBox(
              width: 144.62.w,
              child: const Card(
                child: Text('data'),
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(width: 10.w),
          ),
        ),
        Container(
          margin: UiHelper.padding(top: 30.h),
          height: 60.h,
          alignment: Alignment.centerLeft,
          child: const Text(
            'Popular',
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3.w / 4.h,
                  mainAxisSpacing: 18.h,
                  crossAxisSpacing: 10.w),
              itemCount: 20,
              physics: const NeverScrollableScrollPhysics(),
              padding: UiHelper.padding(top: 0, bottom: 20.h),
              itemBuilder: (context, index) => SizedBox(
                width: 100.w,
                child: Card(
                  child: Text(
                    '$index',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: ColorConst.black,
                    ),
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
