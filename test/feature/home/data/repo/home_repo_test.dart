import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_application/core/error/failure.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';
import 'package:pet_application/feature/home/data/repo/home_repo.dart';
import 'package:pet_application/feature/home/presentation/cubit/home_cubit.dart';
import 'package:pet_application/feature/home/presentation/cubit/home_state.dart';

// Mock classes
class MockHomeRepo extends Mock implements HomeRepo {}

void main() {
  late HomeCubit homeCubit;
  late MockHomeRepo mockHomeRepo;

  setUp(() {
    mockHomeRepo = MockHomeRepo();
    homeCubit = HomeCubit(mockHomeRepo);
  });

  tearDown(() {
    homeCubit.close();
  });

  group('HomeCubit', () {
    // Test data
    final tCatBreeds = [
      CatBreedResponse(
        id: '1',
        name: 'Persian',
        origin: 'Iran',
        lifeSpan: '12-15 years',
        affectionLevel: 5,
      ),
      CatBreedResponse(
        id: '2',
        name: 'Siamese',
        origin: 'Thailand',
        lifeSpan: '15-20 years',
        affectionLevel: 4,
      ),
    ];

    test('initial state should be HomeInitial', () {
      expect(homeCubit.state, isA<HomeInitial>());
    });

    blocTest<HomeCubit, HomeState>(
      'emits [HomeLoading, HomeSuccess] when getCatBreeds is successful',
      build: () {
        when(() => mockHomeRepo.getCatBreeds())
            .thenAnswer((_) async => Right(tCatBreeds));
        return homeCubit;
      },
      act: (cubit) => cubit.getCatBreeds(),
      expect: () => [
        isA<HomeLoading>(),
        isA<HomeSuccess>()
            .having((state) => state.catBreeds, 'catBreeds', tCatBreeds),
      ],
      verify: (_) {
        verify(() => mockHomeRepo.getCatBreeds()).called(1);
      },
    );

    blocTest<HomeCubit, HomeState>(
      'emits [HomeLoading, Homefailure] when getCatBreeds fails',
      build: () {
        when(() => mockHomeRepo.getCatBreeds()).thenAnswer(
            (_) async => Left(Failure('Network error occurred')));
        return homeCubit;
      },
      act: (cubit) => cubit.getCatBreeds(),
      expect: () => [
        isA<HomeLoading>(),
        isA<HomeFailure>()
            .having((state) => state.message, 'message', 'Network error occurred'),
      ],
      verify: (_) {
        verify(() => mockHomeRepo.getCatBreeds()).called(1);
      },
    );

    blocTest<HomeCubit, HomeState>(
      'emits [HomeLoading, HomeSuccess] with empty list when no breeds available',
      build: () {
        when(() => mockHomeRepo.getCatBreeds())
            .thenAnswer((_) async => Right([]));
        return homeCubit;
      },
      act: (cubit) => cubit.getCatBreeds(),
      expect: () => [
        isA<HomeLoading>(),
        isA<HomeSuccess>()
            .having((state) => state.catBreeds, 'catBreeds', []),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'can call getCatBreeds multiple times',
      build: () {
        when(() => mockHomeRepo.getCatBreeds())
            .thenAnswer((_) async => Right(tCatBreeds));
        return homeCubit;
      },
      act: (cubit) async {
        await cubit.getCatBreeds();
        await cubit.getCatBreeds();
      },
      expect: () => [
        isA<HomeLoading>(),
        isA<HomeSuccess>(),
        isA<HomeLoading>(),
        isA<HomeSuccess>(),
      ],
      verify: (_) {
        verify(() => mockHomeRepo.getCatBreeds()).called(2);
      },
    );
  });
}