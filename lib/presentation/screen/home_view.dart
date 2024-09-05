import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/application/fav_watchlist/fav_watchlist_cubit.dart';
import 'package:movies_app/application/home/home_cubit.dart';
import 'package:movies_app/core/common/assets_path.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/injection/injection.dart';
import 'package:movies_app/core/routes/app_router.dart';
import 'package:movies_app/core/utils/text_theme_extension.dart';
import 'package:movies_app/core/utils/ui_helper.dart';
import 'package:movies_app/presentation/widget/poster_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: Builder(
        builder: (context) {
          final homeState = context.watch<HomeCubit>().state;
          final favWatchState = context.watch<FavWatchlistCubit>().state;
          final homeCubit = context.read<HomeCubit>();
          final favWatchCubit = context.read<FavWatchlistCubit>();
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: UiHelper.padding(
                    horizontal: 24.w,
                    bottom: 15,
                    top: 5,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AssetsPath.moviAppLogo,
                        height: 23,
                      ),
                      Text(
                        '  Movie App',
                        style: context.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                homeState.nowPlayingFailureOrSucceed.fold(
                  () => homeState.nowPlayingIsLoading
                      ? Center(child: UiHelper.loading())
                      : const SizedBox.shrink(),
                  (response) => response.fold(
                    (failure) => failure.when(
                      fromServerSide: (value) => Text(value),
                    ),
                    (response) => SizedBox(
                      height: 210,
                      child: Builder(
                        builder: (context) {
                          return CarouselSlider(
                            items: response
                                .map(
                                  (data) => GestureDetector(
                                    onTap: () => context.router.push(
                                      DetailsRoute(id: data.id),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            data.backdrop,
                                          ).image,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: UiHelper.padding(all: 10),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            data.title,
                                            style:
                                                context.textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                            options: CarouselOptions(
                              viewportFraction: 1,
                              enlargeCenterPage: false,
                              autoPlay: true,
                              onPageChanged: (index, reason) {
                                homeCubit.carouselIndex(index);
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 6; i++)
                      Container(
                        margin: UiHelper.padding(right: 5),
                        width: homeState.currentCarousel == i ? 10 : 7,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(400),
                          color: homeState.currentCarousel == i
                              ? ColorConst.white
                              : ColorConst.grey,
                        ),
                      )
                  ],
                ),
                Padding(
                  padding: UiHelper.padding(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60.h,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Popular',
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      homeState.popularFailureOrSucceed.fold(
                        () => homeState.nowPlayingIsLoading
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
                              crossAxisSpacing: 18.w,
                            ),
                            itemCount: 20,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: UiHelper.padding(top: 0, bottom: 20.h),
                            itemBuilder: (context, index) {
                              final data = response[index];
                              return PosterCard(
                                data: data,
                                showDownloadButton: true,
                                isFavorite: favWatchState.isFav(data),
                                isWatchlisted: favWatchState.isListed(data),
                                onTap: () => context.router.push(
                                  DetailsRoute(id: data.id),
                                ),
                                toggleFav: () => favWatchCubit.toggleFav(data),
                                toggleAdd: () =>
                                    favWatchCubit.toggleWatchlist(data),
                                downloadOnTap: () async {
                                  await homeCubit.downloadImage(data.image);
                                },
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
