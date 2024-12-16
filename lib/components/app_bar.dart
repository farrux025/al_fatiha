import 'package:al_fatiha_online/components/app_text.dart';
import 'package:al_fatiha_online/constants/app_color.dart';
import 'package:al_fatiha_online/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget {
  String title;
  bool? hasBackBtn;

  MyAppBar({
    super.key,
    required this.title,
    this.hasBackBtn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColor.white,
          leading: hasBackBtn ?? false
              ? const IconButton(
                  onPressed: popBack,
                  icon: Icon(Icons.keyboard_arrow_left,
                      color: AppColor.textColor))
              : const SizedBox(),
          title: AppText(title, textAlign: TextAlign.center),
          centerTitle: true,
        ),
      )
      /* Row(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: hasBackBtn ?? false
                ? IconButton(
                    onPressed: () => popBack,
                    icon: const Icon(Icons.keyboard_arrow_left,
                        color: AppColor.textColor))
                : const SizedBox(),
          ),
          Container(
              alignment: Alignment.center,
              child: AppText(title, textAlign: TextAlign.center))
        ],
      )*/
      ,
    );
  }
}
