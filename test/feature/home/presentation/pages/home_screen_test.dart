import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart'
    as cat_model;
import 'package:pet_application/feature/home/presentation/cubit/home_cubit.dart';
import 'package:pet_application/feature/home/presentation/cubit/home_state.dart';
import 'package:pet_application/feature/home/presentation/pages/home_screen.dart';

class MockHomeCubit extends Mock implements HomeCubit {
  // Simple mock without complex stream handling
  @override
  Stream<HomeState> get stream => Stream<HomeState>.empty();

  @override
  Future<void> close() async {
    // Simple implementation that returns a completed future
    return;
  }
}

void main() {
  // Create sample test data WITHOUT images to avoid network calls
  final mockCatBreeds = [
    cat_model.CatBreedResponse(
      id: '1',
      name: 'Persian',
      origin: 'Iran',
      lifeSpan: '12-15 years',
      affectionLevel: 5,
      // No image to avoid network calls in tests
    ),
    cat_model.CatBreedResponse(
      id: '2',
      name: 'Siamese',
      origin: 'Thailand',
      lifeSpan: '10-12 years',
      affectionLevel: 4,
      // No image to avoid network calls in tests
    ),
    cat_model.CatBreedResponse(
      id: '3',
      name: 'Unknown Breed',
      origin: null,
      lifeSpan: null,
      affectionLevel: null,
    ),
  ];

  // Helper function to create testable widget
  Widget createTestableWidget(HomeCubit cubit) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        home: BlocProvider<HomeCubit>.value(
          value: cubit,
          child: const HomeScreen(),
        ),
      ),
    );
  }

  group('HomeScreen Widget Tests', () {
    late MockHomeCubit mockHomeCubit;

    setUp(() {
      mockHomeCubit = MockHomeCubit();
      
      // Setup default mock behaviors
      when(() => mockHomeCubit.state).thenReturn(HomeInitial());
      when(() => mockHomeCubit.getCatBreeds()).thenAnswer((_) async {});
      
      // Register fallback values
      registerFallbackValue(HomeInitial());
      registerFallbackValue(HomeLoading());
      registerFallbackValue(HomeSuccess([]));
      registerFallbackValue(HomeFailure(''));
    });

    tearDown(() {
      // Don't call close() on mock to avoid the Future<void> error
    });

    testWidgets('should display app bar with title and notification icon', (tester) async {
      // Arrange
      when(() => mockHomeCubit.state).thenReturn(HomeInitial());

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump(); // Use pump() instead of pumpAndSettle() for initial state

      // Assert
      expect(find.text('Find Your Forever Pet'), findsOneWidget);
      expect(find.byIcon(Icons.notifications_outlined), findsOneWidget);
    });

    testWidgets('should display search bar and filter button', (tester) async {
      // Arrange
      when(() => mockHomeCubit.state).thenReturn(HomeInitial());

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Assert
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.text('Search'), findsOneWidget);
      expect(find.byIcon(Icons.tune), findsOneWidget);
    });

    testWidgets('should display Categories label and all category chips', (tester) async {
      // Arrange
      when(() => mockHomeCubit.state).thenReturn(HomeInitial());

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Assert - Check for categories that actually exist in your HomeScreen
      expect(find.text('Categories'), findsOneWidget);
      expect(find.text('All'), findsOneWidget);
      expect(find.text('Cats'), findsOneWidget);
      expect(find.text('Dogs'), findsOneWidget);
      expect(find.text('Birds'), findsOneWidget);
      // Remove checks for categories that don't exist in your actual HomeScreen
    });

    testWidgets('should display loading indicator when state is HomeLoading', (tester) async {
      // Arrange
      when(() => mockHomeCubit.state).thenReturn(HomeLoading());

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump(); // Use pump() to avoid timeout

      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should display error message when state is HomeFailure', (tester) async {
      // Arrange
      const errorMessage = 'Network error occurred';
      when(() => mockHomeCubit.state).thenReturn(HomeFailure(errorMessage));

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Assert
      expect(find.byIcon(Icons.error_outline), findsOneWidget);
      expect(find.text('Error: $errorMessage'), findsOneWidget);
      expect(find.text('Retry'), findsOneWidget);
    });

    testWidgets('should call getCatBreeds when retry button is tapped', (tester) async {
      // Arrange
      const errorMessage = 'Network error occurred';
      when(() => mockHomeCubit.state).thenReturn(HomeFailure(errorMessage));
      when(() => mockHomeCubit.getCatBreeds()).thenAnswer((_) async {});

      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Reset call count
      clearInteractions(mockHomeCubit);

      // Act - tap retry button
      await tester.tap(find.text('Retry'));
      await tester.pump();

      // Assert
      verify(() => mockHomeCubit.getCatBreeds()).called(1);
    });

    testWidgets('should display "No pets available" when breeds list is empty', (tester) async {
      // Arrange
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess([]));

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Assert
      expect(find.text('No pets available'), findsOneWidget);
    });

    testWidgets('should display list of pet cards when state is HomeSuccess', (tester) async {
      // Arrange
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(mockCatBreeds));

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Assert
      expect(find.text('Persian'), findsOneWidget);
      expect(find.text('Iran'), findsOneWidget);
      expect(find.text('12-15 years'), findsOneWidget);
    });

    testWidgets('should display affection level for each breed', (tester) async {
      // Arrange
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(mockCatBreeds));

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Assert
      expect(find.text('Affection: 5/5'), findsOneWidget);
      expect(find.text('Affection: 4/5'), findsOneWidget);
    });

    testWidgets('should display favorite icon for each pet card', (tester) async {
      // Arrange
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(mockCatBreeds));

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Assert - Check for at least one favorite icon (not exact count)
      expect(find.byIcon(Icons.favorite_border), findsAtLeast(1));
    });

    testWidgets('should display pet icon when no image available', (tester) async {
      // Arrange
      final breedsWithNoImage = [
        cat_model.CatBreedResponse(
          id: '3',
          name: 'No Image Breed',
          origin: 'Unknown',
          lifeSpan: 'Unknown',
          affectionLevel: 3,
          // No image property at all
        ),
      ];

      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(breedsWithNoImage));

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Assert - Should show pet icon when no image
      expect(find.byIcon(Icons.pets), findsAtLeast(1));
    });

    testWidgets('should display Unknown for null values', (tester) async {
      // Arrange
      final breedsWithNullValues = [
        cat_model.CatBreedResponse(
          id: '3',
          name: null,
          origin: null,
          lifeSpan: null,
          affectionLevel: null,
        ),
      ];

      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(breedsWithNullValues));

      // Act
      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Assert
      expect(find.text('Unknown'), findsOneWidget);
      expect(find.text('Unknown origin'), findsOneWidget);
      expect(find.text('Unknown lifespan'), findsOneWidget);
      expect(find.text('Affection: 0/5'), findsOneWidget);
    });

    testWidgets('should handle pull to refresh', (tester) async {
      // Arrange
      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(mockCatBreeds));
      when(() => mockHomeCubit.getCatBreeds()).thenAnswer((_) async {});

      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Clear initial interactions
      clearInteractions(mockHomeCubit);

      // Act - find the main ListView (not the horizontal categories one)
      final listViews = find.byType(ListView);
      expect(listViews, findsNWidgets(2)); // Should find 2 ListViews

      // Get the vertical ListView (the second one)
      final verticalListView = find.byType(ListView).at(1);
      await tester.drag(verticalListView, const Offset(0.0, 300.0));
      await tester.pump();

      // Assert
      verify(() => mockHomeCubit.getCatBreeds()).called(1);
    });

    testWidgets('should scroll through multiple pet cards', (tester) async {
      // Arrange - Create more breeds to enable scrolling
      final manyBreeds = List.generate(5, (index) => cat_model.CatBreedResponse(
            id: '$index',
            name: 'Breed $index',
            origin: 'Origin $index',
            lifeSpan: '${10 + index} years',
            affectionLevel: index % 5 + 1,
          ));

      when(() => mockHomeCubit.state).thenReturn(HomeSuccess(manyBreeds));

      await tester.pumpWidget(createTestableWidget(mockHomeCubit));
      await tester.pump();

      // Verify initial breed is visible
      expect(find.text('Breed 0'), findsOneWidget);

      // Act - scroll to find another breed
      final verticalListView = find.byType(ListView).at(1);
      await tester.scrollUntilVisible(
        find.text('Breed 3'),
        500.0,
        scrollable: verticalListView,
      );
      await tester.pump();

      // Assert
      expect(find.text('Breed 3'), findsOneWidget);
    });
  });
}