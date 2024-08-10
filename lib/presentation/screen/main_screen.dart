import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/application/nav_bar/nav_bar_cubit.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/utils/ui_helper.dart';
import 'package:movies_app/presentation/screen/home_view.dart';
import 'package:movies_app/presentation/screen/user_view.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
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
                currentIndex: state.selectedIndex,
                elevation: 0,
                onTap: (value) {
                  context.read<NavBarCubit>().changeScreen(value);
                },
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
          body: Padding(
            padding: UiHelper.padding(
              top: 43.h,
            ),
            child: IndexedStack(
              index: state.selectedIndex,
              children: const [
                HomeView(),
                UserView(),
              ],
            ),
          ),
        );
      },
    );
  }
}
