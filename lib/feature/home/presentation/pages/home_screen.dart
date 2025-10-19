import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_application/core/extensions/ext.dart';
import 'package:pet_application/core/routes/route_paths.dart';
import 'package:pet_application/core/theme/styles.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart'
    as cat_model;
import 'package:pet_application/feature/home/presentation/cubit/home_cubit.dart';
import 'package:pet_application/feature/home/presentation/cubit/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';

  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getCatBreeds();
  }

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
                _buildCategoryChip('All'),
                SizedBox(width: 8.w),
                _buildCategoryChip('Cats'),
                SizedBox(width: 8.w),
                _buildCategoryChip('Dogs'),
                SizedBox(width: 8.w),
                _buildCategoryChip('Birds'),
                SizedBox(width: 8.w),
                _buildCategoryChip('Fish'),
                SizedBox(width: 8.w),
                _buildCategoryChip('Reptiles'),
              ],
            ),
          ),
          16.hSpace,
          Expanded(
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeLoading) {
                  return const Center(
                    child: CircularProgressIndicator(color: Color(0xFF4FC3C3)),
                  );
                }

                if (state is HomeFailure) {
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
                          style: TextStyle(fontSize: 16.sp, color: Colors.red),
                          textAlign: TextAlign.center,
                        ),
                        16.hSpace,
                        ElevatedButton(
                          onPressed: () {
                            context.read<HomeCubit>().getCatBreeds();
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

                if (state is HomeSuccess) {
                  final breeds = state.catBreeds;

                  // Debug: Print the first breed to check data
                  // if (breeds.isNotEmpty) {
                  //   print('First breed name: ${breeds[0].name}');
                  //   print('First breed image: ${breeds[0].image}');
                  //   print('First breed image URL: ${breeds[0].image?.url}');
                  // }

                  if (breeds.isEmpty) {
                    return Center(
                      child: Text(
                        'No pets available',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                    );
                  }

                  return RefreshIndicator(
                    onRefresh: () async {
                      await context.read<HomeCubit>().getCatBreeds();
                    },
                    color: const Color(0xFF4FC3C3),
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      itemCount: breeds.length,
                      separatorBuilder: (context, index) => 12.hSpace,
                      itemBuilder: (context, index) {
                        final breed = breeds[index];
                        return _buildPetCard(breed);
                      },
                    ),
                  );
                }

                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    final isSelected = selectedCategory == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = label;
        });
        // You can add filter logic here based on selected category
      },
      child: Container(
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
      ),
    );
  }

  Widget _buildPetCard(cat_model.CatBreedResponse breed) {
    String? imageUrl;
    if (breed.image?.url != null && breed.image!.url!.isNotEmpty) {
      imageUrl = breed.image!.url;
    } else if (breed.referenceImageId != null &&
        breed.referenceImageId!.isNotEmpty) {
      imageUrl =
          'https://cdn2.thecatapi.com/images/${breed.referenceImageId}.jpg';
    }

    return InkWell(
      onTap: () {
        context.push(
          '${Routes.petDetails}/${breed.id}',
          extra: {'imageUrl': imageUrl},
        );
      },
      child: Container(
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
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: imageUrl != null
                    ? Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          print('Error loading image: $error');
                          print('URL: $imageUrl');
                          return Center(
                            child: Icon(
                              Icons.pets,
                              size: 40.sp,
                              color: Colors.grey[400],
                            ),
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                  : null,
                              strokeWidth: 2,
                              color: const Color(0xFF4FC3C3),
                            ),
                          );
                        },
                      )
                    : Center(
                        child: Icon(
                          Icons.pets,
                          size: 40.sp,
                          color: Colors.grey[400],
                        ),
                      ),
              ),
            ),
            12.wSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    breed.name ?? 'Unknown',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  4.hSpace,
                  Text(
                    breed.origin ?? 'Unknown origin',
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
                  ),
                  Text(
                    breed.lifeSpan ?? 'Unknown lifespan',
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
                  ),
                  4.hSpace,
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red, size: 14.sp),
                      SizedBox(width: 4.w),
                      Text(
                        'Affection: ${breed.affectionLevel ?? 0}/5',
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
      ),
    );
  }
}
