import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_application/core/extensions/ext.dart';
import 'package:pet_application/core/widgets/app_button.dart';

class PetDetailScreen extends StatelessWidget {
  const PetDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F5F5),
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Icon(Icons.arrow_back_ios_new, size: 18.sp),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4FC3C3),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(Icons.favorite, color: Colors.white, size: 20.sp),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/pet_detail.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(24.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.r),
                topRight: Radius.circular(32.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tom',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\$95',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF4FC3C3),
                      ),
                    ),
                  ],
                ),
                4.hSpace,
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.red, size: 16.sp),
                    4.wSpace,
                    Text(
                      '27 km away',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                20.hSpace,
                Row(
                  children: [
                    Expanded(
                      child: _buildInfoCard('Gender', 'Male'),
                    ),
                    12.wSpace,
                    Expanded(
                      child: _buildInfoCard('Age', '1 Year'),
                    ),
                    12.wSpace,
                    Expanded(
                      child: _buildInfoCard('Weight', '10 kg'),
                    ),
                  ],
                ),
                20.hSpace,
                Text(
                  'About:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                8.hSpace,
                Text(
                  'Tom is a friendly and loyal Golden Retriever who loves being around people.\n\nHe\'s 1 years old, full of energy, and always ready for a game of fetch.\n\nHe\'s gentle with kids, belly rubs, and taking long naps after playtime.\n\nHis sweet and loyal nature makes the perfect family companion.',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                    height: 1.6,
                  ),
                ),
                24.hSpace,
                AppButton(
                  text: 'Adopt me',
                  radius: 28.r,
                  color: const Color(0xFF4FC3C3),
                  borderColor: const Color(0xFF4FC3C3),
                  onPressed: () {},
                ),
                16.hSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String label, String value) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey[600],
            ),
          ),
          4.hSpace,
          Text(
            value,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}