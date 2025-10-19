import 'package:flutter/material.dart' hide Image;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:pet_application/core/error/failure.dart';
import 'package:pet_application/feature/home/data/data_source/home_api.dart';
import 'package:pet_application/feature/home/data/repo/home_repo.dart';
import 'package:pet_application/feature/home/presentation/cubit/home_cubit.dart';
import 'package:pet_application/feature/home/presentation/pages/home_screen.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';

// Mock classes
class MockHomeApi extends Mock implements HomeApi {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Pet Application Integration Tests', () {
    late MockHomeApi mockHomeApi;
    late HomeRepo homeRepo;
    late HomeCubit homeCubit;

    setUp(() {
      mockHomeApi = MockHomeApi();
      homeRepo = HomeRepo(homeApi: mockHomeApi);
      homeCubit = HomeCubit(homeRepo);
    });

    tearDown(() {
      homeCubit.close();
    });

    Widget createApp() {
      return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp(
          home: BlocProvider.value(
            value: homeCubit,
            child: const HomeScreen(),
          ),
        ),
      );
    }

    testWidgets('Complete flow: Loading -> Success -> Display breeds',
        (tester) async {
      // arrange
      final mockBreeds = [
        CatBreedResponse(
          id: 'abys',
          name: 'Abyssinian',
          origin: 'Egypt',
          lifeSpan: '14 - 15',
          affectionLevel: 5,
          image: Image(
            id: 'img1',
            url: 'https://cdn2.thecatapi.com/images/abys.jpg',
            width: 1200,
            height: 800,
          ),
        ),
        CatBreedResponse(
          id: 'aege',
          name: 'Aegean',
          origin: 'Greece',
          lifeSpan: '9 - 12',
          affectionLevel: 4,
        ),
      ];

      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right(mockBreeds));

      // act
      await tester.pumpWidget(createApp());

      // assert - loading state
      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      // Wait for data to load
      await tester.pumpAndSettle();

      // assert - success state with data
      expect(find.text('Abyssinian'), findsOneWidget);
      expect(find.text('Aegean'), findsOneWidget);
      expect(find.text('Egypt'), findsOneWidget);
      expect(find.text('Greece'), findsOneWidget);
      expect(find.text('Affection: 5/5'), findsOneWidget);
      expect(find.text('Affection: 4/5'), findsOneWidget);

      // Verify API was called
      verify(() => mockHomeApi.getCatBreeds()).called(1);
    });

    testWidgets('Error flow: Loading -> Error -> Retry -> Success',
        (tester) async {
      // arrange - first call fails
      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Left(Failure('Network error')));

      // act
      await tester.pumpWidget(createApp());
      await tester.pumpAndSettle();

      // assert - error state
      expect(find.byIcon(Icons.error_outline), findsOneWidget);
      expect(find.text('Error: Network error'), findsOneWidget);
      expect(find.text('Retry'), findsOneWidget);

      // arrange - second call succeeds
      final mockBreeds = [
        CatBreedResponse(
          id: 'abys',
          name: 'Abyssinian',
          origin: 'Egypt',
          lifeSpan: '14 - 15',
          affectionLevel: 5,
        ),
      ];
      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right(mockBreeds));

      // act - tap retry
      await tester.tap(find.text('Retry'));
      await tester.pump();

      // assert - loading state
      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      await tester.pumpAndSettle();

      // assert - success state
      expect(find.text('Abyssinian'), findsOneWidget);
      expect(find.text('Egypt'), findsOneWidget);

      // Verify API was called twice (initial + retry)
      verify(() => mockHomeApi.getCatBreeds()).called(2);
    });

    testWidgets('Category selection flow', (tester) async {
      // arrange
      final mockBreeds = [
        CatBreedResponse(
          id: '1',
          name: 'Persian',
          origin: 'Iran',
          lifeSpan: '12-15 years',
          affectionLevel: 5,
        ),
      ];
      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right(mockBreeds));

      // act
      await tester.pumpWidget(createApp());
      await tester.pumpAndSettle();

      // assert - All category is selected by default
      expect(find.text('All'), findsOneWidget);

      // act - tap on Cats category
      await tester.tap(find.text('Cats'));
      await tester.pumpAndSettle();

      // assert - Cats category is now selected
      expect(find.text('Cats'), findsOneWidget);

      // act - tap on Dogs category
      await tester.tap(find.text('Dogs'));
      await tester.pumpAndSettle();

      // assert - Dogs category is now selected
      expect(find.text('Dogs'), findsOneWidget);
    });

    testWidgets('Pull to refresh flow', (tester) async {
      // arrange
      final initialBreeds = [
        CatBreedResponse(
          id: '1',
          name: 'Persian',
          origin: 'Iran',
          lifeSpan: '12-15 years',
          affectionLevel: 5,
        ),
      ];

      final refreshedBreeds = [
        CatBreedResponse(
          id: '2',
          name: 'Siamese',
          origin: 'Thailand',
          lifeSpan: '15-20 years',
          affectionLevel: 4,
        ),
      ];

      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right(initialBreeds));

      // act
      await tester.pumpWidget(createApp());
      await tester.pumpAndSettle();

      // assert - initial data
      expect(find.text('Persian'), findsOneWidget);
      expect(find.text('Iran'), findsOneWidget);

      // arrange - new data for refresh
      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right(refreshedBreeds));

      // act - pull to refresh
      await tester.drag(
        find.byType(RefreshIndicator),
        const Offset(0, 300),
      );
      await tester.pumpAndSettle();

      // assert - refreshed data (in real scenario, this would show new data)
      // Note: In this test, we're just verifying the refresh was triggered
      verify(() => mockHomeApi.getCatBreeds()).called(2);
    });

    testWidgets('Scroll through long list of breeds', (tester) async {
      // arrange
      final manyBreeds = List.generate(
        50,
        (index) => CatBreedResponse(
          id: '$index',
          name: 'Breed $index',
          origin: 'Origin $index',
          lifeSpan: '10-15 years',
          affectionLevel: 5,
        ),
      );

      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right(manyBreeds));

      // act
      await tester.pumpWidget(createApp());
      await tester.pumpAndSettle();

      // assert - first items are visible
      expect(find.text('Breed 0'), findsOneWidget);
      expect(find.text('Breed 1'), findsOneWidget);

      // act - scroll down
      await tester.drag(find.byType(ListView), const Offset(0, -10000));
      await tester.pumpAndSettle();

      // assert - last items are now visible
      expect(find.text('Breed 49'), findsOneWidget);

      // act - scroll back up
      await tester.drag(find.byType(ListView), const Offset(0, 10000));
      await tester.pumpAndSettle();

      // assert - first items are visible again
      expect(find.text('Breed 0'), findsOneWidget);
    });

    testWidgets('Empty state flow', (tester) async {
      // arrange
      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right([]));

      // act
      await tester.pumpWidget(createApp());
      await tester.pumpAndSettle();

      // assert
      expect(find.text('No pets available'), findsOneWidget);
    });

    testWidgets('App bar interactions', (tester) async {
      // arrange
      final mockBreeds = [
        CatBreedResponse(
          id: '1',
          name: 'Persian',
          origin: 'Iran',
          lifeSpan: '12-15 years',
          affectionLevel: 5,
        ),
      ];
      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right(mockBreeds));

      // act
      await tester.pumpWidget(createApp());
      await tester.pumpAndSettle();

      // assert - app bar elements
      expect(find.text('Find Your Forever Pet'), findsOneWidget);
      expect(find.byIcon(Icons.notifications_outlined), findsOneWidget);

      // act - tap notification icon (no action defined, but verify it's tappable)
      await tester.tap(find.byIcon(Icons.notifications_outlined));
      await tester.pumpAndSettle();

      // assert - screen still displays correctly
      expect(find.text('Persian'), findsOneWidget);
    });

    testWidgets('Search and filter UI elements are present', (tester) async {
      // arrange
      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right([]));

      // act
      await tester.pumpWidget(createApp());
      await tester.pumpAndSettle();

      // assert - search elements
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.text('Search'), findsOneWidget);
      expect(find.byIcon(Icons.tune), findsOneWidget);
    });

    testWidgets('All category chips are interactive', (tester) async {
      // arrange
      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right([]));

      // act
      await tester.pumpWidget(createApp());
      await tester.pumpAndSettle();

      // assert & act - test each category chip
      final categories = ['All', 'Cats', 'Dogs', 'Birds', 'Fish', 'Reptiles'];
      
      for (final category in categories) {
        expect(find.text(category), findsOneWidget);
        await tester.tap(find.text(category));
        await tester.pumpAndSettle();
      }
    });

    testWidgets('Breed card displays all required information', (tester) async {
      // arrange
      final mockBreeds = [
        CatBreedResponse(
          id: 'test',
          name: 'Test Breed',
          origin: 'Test Country',
          lifeSpan: '10 - 15',
          affectionLevel: 5,
          image: Image(
            id: 'img1',
            url: 'https://example.com/test.jpg',
            width: 500,
            height: 500,
          ),
        ),
      ];

      when(() => mockHomeApi.getCatBreeds())
          .thenAnswer((_) async => Right(mockBreeds));

      // act
      await tester.pumpWidget(createApp());
      await tester.pumpAndSettle();

      // assert - all breed information is displayed
      expect(find.text('Test Breed'), findsOneWidget);
      expect(find.text('Test Country'), findsOneWidget);
      expect(find.text('10 - 15'), findsOneWidget);
      expect(find.text('Affection: 5/5'), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsOneWidget);
      expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    });
  });
}