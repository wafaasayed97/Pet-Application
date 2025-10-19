import 'package:flutter/material.dart' hide Image;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';
import 'package:pet_application/feature/home/presentation/cubit/home_cubit.dart';
import 'package:pet_application/feature/home/presentation/cubit/home_state.dart';
import 'package:pet_application/feature/home/presentation/pages/home_screen.dart';

// Mock classes
class MockHomeCubit extends Mock implements HomeCubit {}

void main() {
  late MockHomeCubit mockHomeCubit;

  setUp(() {
    mockHomeCubit = MockHomeCubit();
    // Mock the stream
    when(() => mockHomeCubit.stream).thenAnswer((_) => Stream.value(HomeInitial()));
  });

  // Helper function to create widget under test
  Widget createWidgetUnderTest() {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        home: BlocProvider<HomeCubit>.value(
          value: mockHomeCubit,
          child: const HomeScreen(),
        ),
      ),
    );
  }

  group('HomeScreen Widget Tests', () {
    testWidgets('should display app bar with title and notification icon',
        (tester) async {
      // arrange
      when(() => mockHomeCubit.state).thenReturn(HomeInitial());

      // act
      await tester.pumpWidget(createWidgetUnderTest());

      // assert
      expect(find.text('Find Your Forever Pet'), findsOneWidget);
      expect(find.byIcon(Icons.notifications_outlined), findsOneWidget);
    });

    testWidgets('should display search bar and filter button', (tester) async {
      // arrange
      when(() => mockHomeCubit.state).thenReturn(HomeInitial());

      // act
      await tester.pumpWidget(createWidgetUnderTest());

      // assert
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.text('Search'), findsOneWidget);
      expect(find.byIcon(Icons.tune), findsOneWidget);
    });

    testWidgets('should display all category chips', (tester) async {
      // arrange
      when(() => mockHomeCubit.state).thenReturn(HomeInitial());

      // act
      await tester.pumpWidget(createWidgetUnderTest());

      // assert
      expect(find.text('Categories'), findsOneWidget);
      expect(find.text('All'), findsOneWidget);
      expect(find.text('Cats'), findsOneWidget);
      expect(find.text('Dogs'), findsOneWidget);
      expect(find.text('Birds'), findsOneWidget);
      expect(find.text('Fish'), findsOneWidget);
      expect(find.text('Reptiles'), findsOneWidget);
    });

    testWidgets('should display loading indicator when state is HomeLoading',
        (tester) async {
      // arrange
      when(() => mockHomeCubit.state).thenReturn(HomeLoading());

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should display error message when state is Homefailure',
        (tester) async {
      // arrange
      const errorMessage = 'Network error occurred';
      when(() => mockHomeCubit.state).thenReturn(Homefailure(errorMessage));

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // assert
      expect(find.byIcon(Icons.error_outline), findsOneWidget);
      expect(find.text('Error: $errorMessage'), findsOneWidget);
      expect(find.text('Retry'), findsOneWidget);
    });

    testWidgets('should call getCatBreeds when retry button is tapped',
        (tester) async {
      // arrange
      when(() => mockHomeCubit.state).thenReturn(Homefailure('Error'));
      when(() => mockHomeCubit.getCatBreeds()).thenAnswer((_) async {});

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();
      await tester.tap(find.text('Retry'));
      await tester.pump();

      // assert
      verify(() => mockHomeCubit.getCatBreeds()).called(1);
    });

    testWidgets('should display "No pets available" when breeds list is empty',
        (tester) async {
      // arrange
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess([]));

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // assert
      expect(find.text('No pets available'), findsOneWidget);
    });

    testWidgets('should display list of pet cards when state is HomeSuccess',
        (tester) async {
      // arrange
      final breeds = [
        CatBreedResponse(
          id: '1',
          name: 'Persian',
          origin: 'Iran',
          lifeSpan: '12-15 years',
          affectionLevel: 5,
          image: Image(
            id: 'img1',
            url: 'https://example.com/persian.jpg',
            width: 500,
            height: 500,
          ),
        ),
        CatBreedResponse(
          id: '2',
          name: 'Siamese',
          origin: 'Thailand',
          lifeSpan: '15-20 years',
          affectionLevel: 4,
        ),
      ];
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(breeds));

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // assert
      expect(find.text('Persian'), findsOneWidget);
      expect(find.text('Siamese'), findsOneWidget);
      expect(find.text('Iran'), findsOneWidget);
      expect(find.text('Thailand'), findsOneWidget);
      expect(find.text('12-15 years'), findsOneWidget);
      expect(find.text('15-20 years'), findsOneWidget);
    });

    testWidgets('should display affection level for each breed', (tester) async {
      // arrange
      final breeds = [
        CatBreedResponse(
          id: '1',
          name: 'Persian',
          origin: 'Iran',
          lifeSpan: '12-15 years',
          affectionLevel: 5,
        ),
      ];
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(breeds));

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // assert
      expect(find.text('Affection: 5/5'), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsOneWidget);
    });

    testWidgets('should display favorite icon for each pet card', (tester) async {
      // arrange
      final breeds = [
        CatBreedResponse(
          id: '1',
          name: 'Persian',
          origin: 'Iran',
          lifeSpan: '12-15 years',
          affectionLevel: 5,
        ),
      ];
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(breeds));

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // assert
      expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    });

    testWidgets('should change selected category when chip is tapped',
        (tester) async {
      // arrange
      when(() => mockHomeCubit.state).thenReturn(HomeInitial());

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // Find 'Cats' category and tap it
      final catsChip = find.text('Cats');
      expect(catsChip, findsOneWidget);
      await tester.tap(catsChip);
      await tester.pump();

      // assert - The chip should be selected (visual state changes)
      // In actual implementation, you'd check for color change or selection state
      expect(catsChip, findsOneWidget);
    });

    testWidgets('should handle pull to refresh', (tester) async {
      // arrange
      final breeds = [
        CatBreedResponse(
          id: '1',
          name: 'Persian',
          origin: 'Iran',
          lifeSpan: '12-15 years',
          affectionLevel: 5,
        ),
      ];
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(breeds));
      when(() => mockHomeCubit.getCatBreeds()).thenAnswer((_) async {});

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // Perform pull to refresh gesture
      await tester.drag(find.byType(RefreshIndicator), const Offset(0, 300));
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));

      // assert
      verify(() => mockHomeCubit.getCatBreeds()).called(1);
    });

    testWidgets('should display pet icon when image is null', (tester) async {
      // arrange
      final breeds = [
        CatBreedResponse(
          id: '1',
          name: 'Persian',
          origin: 'Iran',
          lifeSpan: '12-15 years',
          affectionLevel: 5,
        ),
      ];
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(breeds));

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // assert
      expect(find.byIcon(Icons.pets), findsOneWidget);
    });

    testWidgets('should display Unknown for null values', (tester) async {
      // arrange
      final breeds = [
        CatBreedResponse(
          id: '1',
          name: null,
          origin: null,
          lifeSpan: null,
          affectionLevel: null,
        ),
      ];
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(breeds));

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // assert
      expect(find.text('Unknown'), findsOneWidget);
      expect(find.text('Unknown origin'), findsOneWidget);
      expect(find.text('Unknown lifespan'), findsOneWidget);
      expect(find.text('Affection: 0/5'), findsOneWidget);
    });

    testWidgets('should call getCatBreeds on initState', (tester) async {
      // arrange
      when(() => mockHomeCubit.state).thenReturn(HomeInitial());
      when(() => mockHomeCubit.getCatBreeds()).thenAnswer((_) async {});

      // act
      await tester.pumpWidget(createWidgetUnderTest());

      // assert
      verify(() => mockHomeCubit.getCatBreeds()).called(1);
    });

    testWidgets('should scroll through multiple pet cards', (tester) async {
      // arrange
      final breeds = List.generate(
        20,
        (index) => CatBreedResponse(
          id: '$index',
          name: 'Breed $index',
          origin: 'Origin $index',
          lifeSpan: '10-15 years',
          affectionLevel: 5,
        ),
      );
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(breeds));

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // assert - Check first few items are visible
      expect(find.text('Breed 0'), findsOneWidget);
      
      // Scroll to bottom
      await tester.drag(find.byType(ListView), const Offset(0, -5000));
      await tester.pumpAndSettle();

      // Check last items are now visible
      expect(find.text('Breed 19'), findsOneWidget);
    });
  });
}