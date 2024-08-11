import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/application/fav_watchlist/fav_watchlist_cubit.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/routes/app_router.dart';
import 'package:movies_app/core/utils/text_theme_extension.dart';
import 'package:movies_app/core/utils/ui_helper.dart';
import 'package:movies_app/presentation/widget/poster_card.dart';

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
            'Guest',
            style: context.textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          BlocBuilder<FavWatchlistCubit, FavWatchlistState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: UiHelper.padding(horizontal: 25.w),
                    child: Text(
                      'Your Favorite',
                      style: context.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(
                    height: 210.h,
                    child: state.favMovie.isEmpty
                        ? const Center(
                            child: Text(
                              'You haven\'t favorited any movies yet.',
                            ),
                          )
                        : ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: state.favMovie.length,
                            itemBuilder: (context, index) {
                              final data = state.favMovie[index];
                              return SizedBox(
                                width: 144.62.w,
                                child: PosterCard(
                                  data: data,
                                  showDownloadButton: false,
                                  isFavorite: state.isFav(data),
                                  isWatchlisted: state.isListed(data),
                                  onTap: () => context.router.push(
                                    DetailsRoute(id: data.id),
                                  ),
                                  toggleAdd: () => context
                                      .read<FavWatchlistCubit>()
                                      .toggleWatchlist(data),
                                  toggleFav: () => context
                                      .read<FavWatchlistCubit>()
                                      .toggleFav(data),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 10.w),
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
                    child: state.watchlist.isEmpty
                        ? const Center(
                            child: Text(
                              'You haven\'t listed any movies to watch yet.',
                            ),
                          )
                        : ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: state.watchlist.length,
                            itemBuilder: (context, index) {
                              final data = state.watchlist[index];
                              return SizedBox(
                                width: 144.62.w,
                                child: PosterCard(
                                  data: data,
                                  showDownloadButton: false,
                                  isFavorite: state.isFav(data),
                                  isWatchlisted: state.isListed(data),
                                  onTap: () => context.router.push(
                                    DetailsRoute(id: data.id),
                                  ),
                                  toggleAdd: () => context
                                      .read<FavWatchlistCubit>()
                                      .toggleWatchlist(data),
                                  toggleFav: () => context
                                      .read<FavWatchlistCubit>()
                                      .toggleFav(data),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 10.w),
                          ),
                  ),
                ],
              );
            },
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
