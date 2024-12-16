import 'package:al_fatiha_online/components/app_bar.dart';
import 'package:al_fatiha_online/components/app_button.dart';
import 'package:al_fatiha_online/components/app_text.dart';
import 'package:al_fatiha_online/constants/app_color.dart';
import 'package:al_fatiha_online/main.dart';
import 'package:al_fatiha_online/views/home/video_widget.dart';
import 'package:al_fatiha_online/views/surah/surah_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: ScreenUtil().screenHeight,
          child: Column(
            children: [
              Flexible(flex: 1, child: MyAppBar(title: "Fotiha surasi")),
              Expanded(
                flex: 9,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      children: [
                        const YouTubeVideoWidget(),
                        SizedBox(height: 20.h),
                        AppText(
                            "Fotiha surasida yo‘l qo‘yilishi mumkin bo‘lgan xatolar",
                            maxLines: 5),
                      ],
                    ),
                  ),
                ),
              ),
              _buildInput()
            ],
          ),
        ),
      ),
      // bottomNavigationBar: _buildInput(),
    );
  }

  _buildInput() {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.white, borderRadius: BorderRadius.circular(60.r)),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              flex: 1,
              child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Qiroatni tekshirish...",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: AppColor.textColor2)))),
          Flexible(
            flex: 1,
            child: AppButton(
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                AppText("Qiroat qilish", textColor: AppColor.white),
                SizedBox(width: 4.w),
                const Icon(Icons.keyboard_arrow_right, color: AppColor.white)
              ]),
              onPressed: () => MyApp.navigatorKey.currentState?.push(
                  MaterialPageRoute(builder: (context) => const SurahScreen())),
            ),
          )
        ],
      ),
    );
  }
}
