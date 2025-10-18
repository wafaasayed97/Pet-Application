import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_application/core/extensions/ext.dart';
import 'package:pet_application/core/widgets/app_button.dart';
import 'package:pet_application/feature/pet_details/presentation/cubit/pet_details_cubit.dart';
import 'package:pet_application/feature/pet_details/presentation/cubit/pet_details_state.dart';
import 'package:pet_application/feature/pet_details/data/models/pet_details_model.dart';

class PetDetailScreen extends StatefulWidget {
  final String petId; // Changed from int to String
  final String? imageUrl;

  const PetDetailScreen({
    super.key,
    required this.petId,
    this.imageUrl,
  });

  @override
  State<PetDetailScreen> createState() => _PetDetailScreenState();
}

class _PetDetailScreenState extends State<PetDetailScreen> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    context.read<PetDetailsCubit>().getPetDetails(widget.petId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F5F5),
      body: BlocBuilder<PetDetailsCubit, PetDetailsState>(
        builder: (context, state) {
          if (state is PetDetailsLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Color(0xFF4FC3C3),
              ),
            );
          }

          if (state is PetDetailsFailure) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 64.sp,
                    color: Colors.red,
                  ),
                  16.hSpace,
                  Text(
                    'Error: ${state.message}',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  16.hSpace,
                  ElevatedButton(
                    onPressed: () {
                      context.read<PetDetailsCubit>().getPetDetails(widget.petId);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4FC3C3),
                    ),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          if (state is PetDetailsSuccess) {
            return _buildContent(state.petDetailsModel);
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildContent(PetDetailsModel petDetails) {
    return Column(
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: isFavorite ? const Color(0xFF4FC3C3) : Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.white : const Color(0xFF4FC3C3),
                      size: 20.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: widget.imageUrl != null
                  ? DecorationImage(
                      image: NetworkImage(widget.imageUrl!),
                      fit: BoxFit.contain,
                    )
                  : const DecorationImage(
                      image: AssetImage('assets/images/pet_detail.png'),
                      fit: BoxFit.contain,
                    ),
            ),
            child: widget.imageUrl == null
                ? Center(
                    child: Icon(
                      Icons.pets,
                      size: 80.sp,
                      color: Colors.grey[400],
                    ),
                  )
                : null,
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
                  Expanded(
                    child: Text(
                      petDetails.name ?? 'Unknown',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  if (petDetails.breedGroup != null)
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4FC3C3).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        petDetails.breedGroup!,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF4FC3C3),
                        ),
                      ),
                    ),
                ],
              ),
              if (petDetails.bredFor != null) ...[
                8.hSpace,
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16.sp),
                    4.wSpace,
                    Expanded(
                      child: Text(
                        petDetails.bredFor!,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              20.hSpace,
              Row(
                children: [
                  if (petDetails.weight != null)
                    Expanded(
                      child: _buildInfoCard('Weight', petDetails.weight!),
                    ),
                  if (petDetails.weight != null && petDetails.height != null)
                    12.wSpace,
                  if (petDetails.height != null)
                    Expanded(
                      child: _buildInfoCard('Height', petDetails.height!),
                    ),
                  if ((petDetails.weight != null || petDetails.height != null) &&
                      petDetails.lifeSpan != null)
                    12.wSpace,
                  if (petDetails.lifeSpan != null)
                    Expanded(
                      child: _buildInfoCard('Life Span', petDetails.lifeSpan!),
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
                _generateDescription(petDetails),
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
                onPressed: () {
                  // Add adoption logic here
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Adoption request for ${petDetails.name}!'),
                      backgroundColor: const Color(0xFF4FC3C3),
                    ),
                  );
                },
              ),
              16.hSpace,
            ],
          ),
        ),
      ],
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
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  String _generateDescription(PetDetailsModel petDetails) {
    String description = '${petDetails.name ?? "This pet"} is a wonderful companion';

    if (petDetails.breedGroup != null) {
      description += ' from the ${petDetails.breedGroup} group';
    }

    description += '.\n\n';

    if (petDetails.bredFor != null) {
      description += 'Bred for: ${petDetails.bredFor}.\n\n';
    }

    if (petDetails.lifeSpan != null) {
      description +=
          'With a life span of ${petDetails.lifeSpan} years, they will be your loyal companion for a long time.\n\n';
    }

    description +=
        'This pet is ready to bring joy, love, and happiness to your home. They are looking for a caring family to share their life with.';

    return description;
  }
}