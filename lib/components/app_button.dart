import 'package:al_fatiha_online/components/app_bar.dart';
import 'package:al_fatiha_online/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  Widget child;
  VoidCallback onPressed;
  double? borderRadius;
  Color? btnColor;
  double? height;
  double? width;

  AppButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.borderRadius,
    this.btnColor,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: height ?? 40.h,
      minWidth: ScreenUtil().screenWidth * 0.36,
      color: btnColor ?? AppColor.btnColorColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 48.r)),
      child: child,
    );
  }
}
