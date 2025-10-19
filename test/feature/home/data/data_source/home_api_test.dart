import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_application/core/error/failure.dart';
import 'package:pet_application/core/network/network_service.dart';
import 'package:pet_application/feature/home/data/data_source/home_api.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';

// Mock classes
class MockNetworkService extends Mock implements NetworkService {}

void main() {
  late HomeApi homeApi;
  late MockNetworkService mockNetworkService;

  setUp(() {
    mockNetworkService = MockNetworkService();
    homeApi = HomeApi(networkService: mockNetworkService);
  });

  group('HomeApi - getCatBreeds', () {
    final tRawResponse = [
      {
        'id': 'abys',
        'name': 'Abyssinian',
        'origin': 'Egypt',
        'life_span': '14 - 15',
        'affection_level': 5,
        'weight': {'imperial': '7 - 10', 'metric': '3 - 5'},
        'image': {
          'id': 'img1',
          'url': 'https://cdn2.thecatapi.com/images/abys.jpg',
          'width': 500,
          'height': 500,
        },
      },
      {
        'id': 'aege',
        'name': 'Aegean',
        'origin': 'Greece',
        'life_span': '9 - 12',
        'affection_level': 4,
        'weight': {'imperial': '7 - 10', 'metric': '3 - 5'},
      },
    ];

    test(
      'should return list of CatBreedResponse when network call is successful',
      () async {
        // arrange
        when(() => mockNetworkService.getData(
              endPoint: any(named: 'endPoint'),
            )).thenAnswer((_) async => Right(tRawResponse));

        // act
        final result = await homeApi.getCatBreeds();

        // assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should not return failure'),
          (breeds) {
            expect(breeds, isA<List<CatBreedResponse>>());
            expect(breeds.length, 2);
            expect(breeds[0].name, 'Abyssinian');
            expect(breeds[0].origin, 'Egypt');
            expect(breeds[0].affectionLevel, 5);
            expect(breeds[1].name, 'Aegean');
          },
        );
        verify(() => mockNetworkService.getData(
              endPoint: any(named: 'endPoint'),
            )).called(1);
      },
    );

    test(
      'should return Failure when network call fails',
      () async {
        // arrange
        final tFailure = Failure('Network error occurred');
        when(() => mockNetworkService.getData(
              endPoint: any(named: 'endPoint'),
            )).thenAnswer((_) async => Left(tFailure));

        // act
        final result = await homeApi.getCatBreeds();

        // assert
        expect(result.isLeft(), true);
        result.fold(
          (failure) {
            expect(failure, isA<Failure>());
            expect(failure.message, 'Network error occurred');
          },
          (breeds) => fail('Should not return success'),
        );
      },
    );

    test(
      'should return Failure when JSON parsing fails',
      () async {
        // arrange - malformed data
        final malformedData = [
          {'invalid': 'data without required fields'}
        ];
        when(() => mockNetworkService.getData(
              endPoint: any(named: 'endPoint'),
            )).thenAnswer((_) async => Right(malformedData));

        // act
        final result = await homeApi.getCatBreeds();

        // assert
        expect(result.isLeft(), true);
        result.fold(
          (failure) {
            expect(failure, isA<Failure>());
            expect(failure.message, contains('Failed to parse cat breeds'));
          },
          (breeds) => fail('Should not return success'),
        );
      },
    );

    test(
      'should return empty list when network returns empty array',
      () async {
        // arrange
        when(() => mockNetworkService.getData(
              endPoint: any(named: 'endPoint'),
            )).thenAnswer((_) async => Right([]));

        // act
        final result = await homeApi.getCatBreeds();

        // assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should not return failure'),
          (breeds) {
            expect(breeds, isA<List<CatBreedResponse>>());
            expect(breeds.isEmpty, true);
          },
        );
      },
    );

    test(
      'should handle breeds without images gracefully',
      () async {
        // arrange
        final dataWithoutImages = [
          {
            'id': 'test',
            'name': 'Test Breed',
            'origin': 'Test Land',
            'life_span': '10 - 15',
            'affection_level': 3,
          }
        ];
        when(() => mockNetworkService.getData(
              endPoint: any(named: 'endPoint'),
            )).thenAnswer((_) async => Right(dataWithoutImages));

        // act
        final result = await homeApi.getCatBreeds();

        // assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should not return failure'),
          (breeds) {
            expect(breeds.length, 1);
            expect(breeds[0].image, isNull);
            expect(breeds[0].name, 'Test Breed');
          },
        );
      },
    );

    test(
      'should return Failure with network error message on exception',
      () async {
        // arrange
        when(() => mockNetworkService.getData(
              endPoint: any(named: 'endPoint'),
            )).thenThrow(Exception('Connection timeout'));

        // act
        final result = await homeApi.getCatBreeds();

        // assert
        expect(result.isLeft(), true);
        result.fold(
          (failure) {
            expect(failure.message, contains('Network error'));
          },
          (breeds) => fail('Should not return success'),
        );
      },
    );
  });
}