
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritePetsScreen extends StatelessWidget {
  const FavoritePetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Your Favorite Pets',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
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
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              childAspectRatio: 0.75,
              children: [
                _buildPetGridCard(
                  'assets/images/pet1.png',
                  'Joli',
                  '10 km away',
                  const Color(0xFFE8F4F4),
                ),
                _buildPetGridCard(
                  'assets/images/pet3.png',
                  'Oliver',
                  '2 km away',
                  const Color(0xFFE8F4F4),
                ),
                _buildPetGridCard(
                  'assets/images/pet2.png',
                  'Tom',
                  '27 km away',
                  const Color(0xFFE8F4F4),
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

  Widget _buildPetGridCard(
    String image,
    String name,
    String distance,
    Color bgColor,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.red, size: 12.sp),
                        SizedBox(width: 2.w),
                        Text(
                          distance,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite,
                  color: const Color(0xFF4FC3C3),
                  size: 20.sp,
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
        ],
      ),
    );
  }
}