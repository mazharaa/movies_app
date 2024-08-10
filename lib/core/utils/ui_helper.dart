import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/common/color_const.dart';

class UiHelper {
  UiHelper._();

  static EdgeInsets padding({
    double? all,
    double? vertical,
    double? horizontal,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    left = setWidth(left ?? horizontal ?? all ?? 0);
    top = setHeight(top ?? vertical ?? all ?? 0);
    right = setWidth(right ?? horizontal ?? all ?? 0);
    bottom = setHeight(bottom ?? vertical ?? all ?? 0);
    return EdgeInsets.fromLTRB(left, top, right, bottom);
  }

  static double setSp(double size) {
    return size.sp;
  }

  static double setHeight(double height) {
    return ScreenUtil().setHeight(height);
  }

  static double setWidth(double width) {
    return ScreenUtil().setWidth(width);
  }

  static Widget loading(
      {Color? color, double? width, double? height, double? value}) {
    return SizedBox(
      width: width ?? UiHelper.setSp(20),
      height: height ?? UiHelper.setSp(20),
      child: Center(
        child: CircularProgressIndicator(
          value: value,
          strokeWidth: 2.0,
          valueColor: AlwaysStoppedAnimation<Color>(
            color ?? ColorConst.blue,
          ),
        ),
      ),
    );
  }
}
