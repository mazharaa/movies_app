import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/application/home/home_cubit.dart';
import 'package:movies_app/core/injection/injection.dart';
import 'package:movies_app/core/routes/app_router.dart';
import 'package:movies_app/core/utils/text_theme_extension.dart';
import 'package:movies_app/core/utils/ui_helper.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: UiHelper.padding(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What do you want to watch?',
                        style: context.textTheme.titleMedium,
                      ),
                      Container(
                        height: 70.h,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Now Playing',
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                state.nowPlayingFailureOrSucceed.fold(
                  () => state.nowPlayingIsLoading
                      ? Center(child: UiHelper.loading())
                      : const SizedBox.shrink(),
                  (response) => response.fold(
                    (failure) => failure.when(
                      fromServerSide: (value) => Text(value),
                    ),
                    (response) => SizedBox(
                      height: 210,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          final data = response[index];
                          return SizedBox(
                            width: 144.62.w,
                            child: GestureDetector(
                              child: Card(
                                elevation: 0,
                                clipBehavior: Clip.antiAlias,
                                child: Image.network(
                                  data.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              onTap: () => context.router.push(
                                DetailsRoute(id: data.id),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10.w),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: UiHelper.padding(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: UiHelper.padding(top: 30.h),
                        height: 60.h,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Popular',
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      state.popularFailureOrSucceed.fold(
                        () => state.nowPlayingIsLoading
                            ? Center(child: UiHelper.loading())
                            : const SizedBox.shrink(),
                        (response) => response.fold(
                          (failure) => failure.when(
                            fromServerSide: (value) => Text(value),
                          ),
                          (response) => GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 3.w / 4.h,
                              mainAxisSpacing: 18.h,
                              crossAxisSpacing: 10.w,
                            ),
                            itemCount: 20,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: UiHelper.padding(top: 0, bottom: 20.h),
                            itemBuilder: (context, index) {
                              final data = response[index];
                              return SizedBox(
                                width: 100.w,
                                child: GestureDetector(
                                  child: Card(
                                    elevation: 0,
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      data.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () => context.router.push(
                                    DetailsRoute(id: data.id),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
