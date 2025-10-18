import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_application/core/constants/assets_manager.dart';
import 'package:pet_application/core/extensions/ext.dart';
import 'package:pet_application/core/routes/route_paths.dart';
import 'package:pet_application/core/widgets/app_asset.dart';
import 'package:pet_application/core/widgets/app_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          AppAsset(
            assetName: AssetsManager.animals,
            height: 300.h,
            width: 300.w,
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32.w),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Find Your Best\nCompanion With Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    height: 1.3,
                  ),
                ),
                16.hSpace,
                Text(
                  'Join & discover the best suitable pets as\nper your preferences in your location',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[500],
                    height: 1.5,
                  ),
                ),
                32.hSpace,
                AppButton(
                  text: 'Get started',
                  radius: 28.r,
                  color: const Color(0xFF4FC3C3),
                  borderColor: const Color(0xFF4FC3C3),
                  onPressed: () {
                     context.push(Routes.mainScreen);
                  },
                ),
              ],
            ),
          ),
          50.hSpace,
        ],
      ),
    );
  }
}
