import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/utils/ui_helper.dart';
import 'package:movies_app/presentation/screen/home_view.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            height: 0,
            thickness: 2.5,
            color: ColorConst.blue,
          ),
          BottomNavigationBar(
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UiHelper.padding(horizontal: 24.w, top: 43.h),
          child: const IndexedStack(
            index: 0,
            children: [
              HomeView(),
            ],
          ),
        ),
      ),
    );
  }
}
