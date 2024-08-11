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
    this.onTap,
    this.toggleFav,
    this.toggleAdd,
  });

  final PosterModel data;
  final bool isFavorite;
  final bool isWatchlisted;
  final GestureTapCallback? onTap;
  final GestureTapCallback? toggleFav;
  final GestureTapCallback? toggleAdd;

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
        child: Padding(
          padding: UiHelper.padding(all: 10),
          child: Stack(
            children: [
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
              Positioned(
                left: 0,
                bottom: 0,
                child: GestureDetector(
                  child: const Icon(
                    Icons.download,
                    color: ColorConst.lightGrey,
                    size: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
