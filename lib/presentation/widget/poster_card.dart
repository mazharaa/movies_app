import 'package:flutter/material.dart';
import 'package:movies_app/core/common/color_const.dart';
import 'package:movies_app/core/utils/ui_helper.dart';
import 'package:movies_app/domain/common/poster/poster_model.dart';

class PosterCard extends StatelessWidget {
  const PosterCard({
    super.key,
    required this.data,
    required this.isFavorite,
    required this.isWatchlisted,
    required this.showDownloadButton,
    this.onTap,
    this.toggleFav,
    this.toggleAdd,
    this.downloadOnTap,
  });

  final PosterModel data;
  final bool isFavorite;
  final bool isWatchlisted;
  final bool showDownloadButton;
  final GestureTapCallback? onTap;
  final GestureTapCallback? toggleFav;
  final GestureTapCallback? toggleAdd;
  final GestureTapCallback? downloadOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.network(
              data.image,
            ).image,
          ),
        ),
        // comment it due to unused
        /*
        child: Padding(
          padding: UiHelper.padding(all: 10),
          child: Stack(
            children: [
              // Favorite Icon
              Positioned(
                top: 0,
                right: 0,
                child: GestureDetector(
                  onTap: toggleFav,
                  child: Icon(
                    Icons.star,
                    color: isFavorite ? ColorConst.blue : ColorConst.lightGrey,
                    size: 20,
                  ),
                ),
              ),
              // Add Watchlist Icon
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: toggleAdd,
                  child: Icon(
                    isWatchlisted
                        ? Icons.library_add_check
                        : Icons.library_add_rounded,
                    color:
                        isWatchlisted ? ColorConst.blue : ColorConst.lightGrey,
                    size: 20,
                  ),
                ),
              ),
              // Download Icon
              showDownloadButton
                  ? Positioned(
                      left: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: downloadOnTap,
                        child: const Icon(
                          Icons.download,
                          color: ColorConst.lightGrey,
                          size: 20,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
        */
      ),
    );
  }
}
