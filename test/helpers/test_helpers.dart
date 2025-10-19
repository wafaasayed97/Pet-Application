import 'package:flutter/material.dart' hide Image;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';

/// Helper class for creating test data
class TestHelpers {
  /// Creates a sample CatBreedResponse for testing
  static CatBreedResponse createMockBreed({
    String id = '1',
    String name = 'Test Breed',
    String origin = 'Test Country',
    String lifeSpan = '10-15 years',
    int affectionLevel = 5,
    bool includeImage = true,
  }) {
    return CatBreedResponse(
      id: id,
      name: name,
      origin: origin,
      lifeSpan: lifeSpan,
      affectionLevel: affectionLevel,
      image: includeImage
          ? Image(
              id: 'img_$id',
              url: 'https://example.com/$id.jpg',
              width: 500,
              height: 500,
            )
          : null,
      weight: Weight(imperial: '7-10', metric: '3-5'),
      temperament: 'Friendly, Active',
      description: 'A wonderful test breed',
      childFriendly: 4,
      dogFriendly: 3,
      energyLevel: 5,
    );
  }

  /// Creates a list of mock breeds
  static List<CatBreedResponse> createMockBreedList(int count) {
    return List.generate(
      count,
      (index) => createMockBreed(
        id: '$index',
        name: 'Breed $index',
        origin: 'Origin $index',
      ),
    );
  }

  /// Wraps a widget with MaterialApp and ScreenUtil for testing
  static Widget wrapWithMaterialApp(Widget child) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) => MaterialApp(
        home: Scaffold(body: child),
      ),
    );
  }

  /// Creates raw JSON data for API response testing
  static List<Map<String, dynamic>> createMockApiResponse(int count) {
    return List.generate(
      count,
      (index) => {
        'id': 'breed_$index',
        'name': 'Breed $index',
        'origin': 'Origin $index',
        'life_span': '10 - 15',
        'affection_level': 5,
        'child_friendly': 4,
        'dog_friendly': 3,
        'energy_level': 5,
        'weight': {
          'imperial': '7 - 10',
          'metric': '3 - 5',
        },
        'image': {
          'id': 'img_$index',
          'url': 'https://cdn2.thecatapi.com/images/breed_$index.jpg',
          'width': 1200,
          'height': 800,
        },
        'reference_image_id': 'img_$index',
      },
    );
  }

  /// Creates a single mock API response JSON
  static Map<String, dynamic> createSingleMockApiResponse({
    String id = 'test',
    String name = 'Test Breed',
    bool includeImage = true,
  }) {
    final response = {
      'id': id,
      'name': name,
      'origin': 'Test Country',
      'life_span': '10 - 15',
      'affection_level': 5,
      'child_friendly': 4,
      'dog_friendly': 3,
      'energy_level': 5,
      'temperament': 'Friendly, Active',
      'description': 'A wonderful test breed',
      'weight': {
        'imperial': '7 - 10',
        'metric': '3 - 5',
      },
    };

    if (includeImage) {
      response['image'] = {
        'id': 'img_$id',
        'url': 'https://cdn2.thecatapi.com/images/$id.jpg',
        'width': 1200,
        'height': 800,
      };
      response['reference_image_id'] = 'img_$id';
    }

    return response;
  }
}