import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_application/core/extensions/ext.dart';
import 'package:pet_application/core/theme/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Find Your Forever Pet', style: font18w600),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 12.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey[400],
                          size: 20.sp,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                12.wSpace,
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(Icons.tune, color: Colors.black, size: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text('Categories', style: font16w600),
          ),

          12.hSpace,
          SizedBox(
            height: 36.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                _buildCategoryChip('All', true),
                SizedBox(width: 8.w),
                _buildCategoryChip('Cats', false),
                SizedBox(width: 8.w),
                _buildCategoryChip('Dogs', false),
                SizedBox(width: 8.w),
                _buildCategoryChip('Birds', false),
                SizedBox(width: 8.w),
                _buildCategoryChip('Fish', false),
                SizedBox(width: 8.w),
                _buildCategoryChip('Reptiles', false),
              ],
            ),
          ),
          16.hSpace,
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                _buildPetCard(
                  'assets/images/animals.png',
                  'Joli',
                  'Female',
                  '5 Months Old',
                  '10 km away',
                ),
                12.hSpace,
                _buildPetCard(
                  'assets/images/animals.png',
                  'Tom',
                  'Male',
                  '1 Year Old',
                  '27 km away',
                ),
                12.hSpace,
                _buildPetCard(
                  'assets/images/animals.png',
                  'Oliver',
                  'Male',
                  '3 Months Old',
                  '2 km away',
                ),
                12.hSpace,
                _buildPetCard(
                  'assets/images/animals.png',
                  'Shelly',
                  'Female',
                  '6 Year Old',
                  '3 km away',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF4FC3C3) : Colors.grey[100],
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14.sp,
          color: isSelected ? Colors.white : Colors.grey[600],
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildPetCard(
    String image,
    String name,
    String gender,
    String age,
    String distance,
  ) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          12.wSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                4.hSpace,
                Text(
                  gender,
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
                ),
                Text(
                  age,
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
                ),
                4.hSpace,
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.red, size: 14.sp),
                    SizedBox(width: 2.w),
                    Text(
                      distance,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite_border,
            color: const Color(0xFF4FC3C3),
            size: 24.sp,
          ),
        ],
      ),
    );
  }
}
