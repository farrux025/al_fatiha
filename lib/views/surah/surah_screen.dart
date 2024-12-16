import 'package:al_fatiha_online/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/app_bar.dart';

class SurahScreen extends StatefulWidget {
  const SurahScreen({super.key});

  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: ScreenUtil().screenHeight,
        child: Column(
          children: [
            Flexible(
                flex: 1,
                child: MyAppBar(
                    title: "Fotiha surasini qiroat qilish", hasBackBtn: true)),
            Flexible(child: Image.asset(AppImages.alFatiha))
          ],
        ),
      )),
    );
  }
}
