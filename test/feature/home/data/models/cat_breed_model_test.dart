import 'package:flutter_test/flutter_test.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';

void main() {
  group('CatBreedResponse Model', () {
    final tCatBreedJson = {
      'id': 'abys',
      'name': 'Abyssinian',
      'origin': 'Egypt',
      'life_span': '14 - 15',
      'affection_level': 5,
      'child_friendly': 4,
      'dog_friendly': 4,
      'energy_level': 5,
      'description': 'The Abyssinian is easy to care for.',
      'temperament': 'Active, Energetic, Independent',
      'weight': {
        'imperial': '7 - 10',
        'metric': '3 - 5',
      },
      'image': {
        'id': 'img123',
        'url': 'https://cdn2.thecatapi.com/images/abys.jpg',
        'width': 1200,
        'height': 800,
      },
      'reference_image_id': 'img123',
    };

    test('should create CatBreedResponse from JSON', () {
      // act
      final result = CatBreedResponse.fromJson(tCatBreedJson);

      // assert
      expect(result, isA<CatBreedResponse>());
      expect(result.id, 'abys');
      expect(result.name, 'Abyssinian');
      expect(result.origin, 'Egypt');
      expect(result.lifeSpan, '14 - 15');
      expect(result.affectionLevel, 5);
      expect(result.childFriendly, 4);
      expect(result.dogFriendly, 4);
      expect(result.energyLevel, 5);
    });

    test('should parse weight correctly', () {
      // act
      final result = CatBreedResponse.fromJson(tCatBreedJson);

      // assert
      expect(result.weight, isNotNull);
      expect(result.weight!.imperial, '7 - 10');
      expect(result.weight!.metric, '3 - 5');
    });

    test('should parse image correctly', () {
      // act
      final result = CatBreedResponse.fromJson(tCatBreedJson);

      // assert
      expect(result.image, isNotNull);
      expect(result.image!.id, 'img123');
      expect(result.image!.url, 'https://cdn2.thecatapi.com/images/abys.jpg');
      expect(result.image!.width, 1200);
      expect(result.image!.height, 800);
    });

    test('should convert CatBreedResponse to JSON', () {
      // arrange
      final catBreed = CatBreedResponse.fromJson(tCatBreedJson);

      // act
      final result = catBreed.toJson();

      // assert
      expect(result, isA<Map<String, dynamic>>());
      expect(result['id'], 'abys');
      expect(result['name'], 'Abyssinian');
      expect(result['origin'], 'Egypt');
      expect(result['life_span'], '14 - 15');
    });

    test('should handle null values gracefully', () {
      // arrange
      final minimalJson = {
        'id': 'test',
        'name': 'Test Cat',
      };

      // act
      final result = CatBreedResponse.fromJson(minimalJson);

      // assert
      expect(result.id, 'test');
      expect(result.name, 'Test Cat');
      expect(result.origin, isNull);
      expect(result.lifeSpan, isNull);
      expect(result.affectionLevel, isNull);
      expect(result.image, isNull);
      expect(result.weight, isNull);
    });

    test('should parse breed without image', () {
      // arrange
      final jsonWithoutImage = {
        'id': 'test',
        'name': 'Test Breed',
        'origin': 'Unknown',
        'reference_image_id': 'ref123',
      };

      // act
      final result = CatBreedResponse.fromJson(jsonWithoutImage);

      // assert
      expect(result.image, isNull);
      expect(result.referenceImageId, 'ref123');
    });

    test('should handle snake_case to camelCase conversion', () {
      // arrange
      final jsonWithSnakeCase = {
        'id': 'test',
        'name': 'Test',
        'life_span': '10 - 15',
        'affection_level': 5,
        'child_friendly': 4,
        'dog_friendly': 3,
        'energy_level': 5,
        'reference_image_id': 'img456',
      };

      // act
      final result = CatBreedResponse.fromJson(jsonWithSnakeCase);

      // assert
      expect(result.lifeSpan, '10 - 15');
      expect(result.affectionLevel, 5);
      expect(result.childFriendly, 4);
      expect(result.dogFriendly, 3);
      expect(result.energyLevel, 5);
      expect(result.referenceImageId, 'img456');
    });
  });

  group('Image Model', () {
    final tImageJson = {
      'id': 'img123',
      'url': 'https://example.com/cat.jpg',
      'width': 800,
      'height': 600,
    };

    test('should create Image from JSON', () {
      // act
      final result = Image.fromJson(tImageJson);

      // assert
      expect(result, isA<Image>());
      expect(result.id, 'img123');
      expect(result.url, 'https://example.com/cat.jpg');
      expect(result.width, 800);
      expect(result.height, 600);
    });

    test('should convert Image to JSON', () {
      // arrange
      final image = Image.fromJson(tImageJson);

      // act
      final result = image.toJson();

      // assert
      expect(result['id'], 'img123');
      expect(result['url'], 'https://example.com/cat.jpg');
      expect(result['width'], 800);
      expect(result['height'], 600);
    });

    test('should handle null values in Image', () {
      // arrange
      final minimalJson = {'id': 'img123'};

      // act
      final result = Image.fromJson(minimalJson);

      // assert
      expect(result.id, 'img123');
      expect(result.url, isNull);
      expect(result.width, isNull);
      expect(result.height, isNull);
    });
  });

  group('Weight Model', () {
    final tWeightJson = {
      'imperial': '7 - 10',
      'metric': '3 - 5',
    };

    test('should create Weight from JSON', () {
      // act
      final result = Weight.fromJson(tWeightJson);

      // assert
      expect(result, isA<Weight>());
      expect(result.imperial, '7 - 10');
      expect(result.metric, '3 - 5');
    });

    test('should convert Weight to JSON', () {
      // arrange
      final weight = Weight.fromJson(tWeightJson);

      // act
      final result = weight.toJson();

      // assert
      expect(result['imperial'], '7 - 10');
      expect(result['metric'], '3 - 5');
    });

    test('should handle null values in Weight', () {
      // arrange
      final emptyJson = <String, dynamic>{};

      // act
      final result = Weight.fromJson(emptyJson);

      // assert
      expect(result.imperial, isNull);
      expect(result.metric, isNull);
    });
  });
}