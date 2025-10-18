import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_application/core/di/services_locator.dart';
import 'package:pet_application/feature/favorite_pets/presentation/pages/favorite_pets_screen.dart';
import 'package:pet_application/feature/home/presentation/cubit/home_cubit.dart';
import 'package:pet_application/feature/home/presentation/pages/home_screen.dart';
import 'package:pet_application/feature/main/presentation/cubits/main_cubit.dart';
import 'package:pet_application/feature/main/presentation/pages/mainlay_out.dart';
import 'package:pet_application/feature/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:pet_application/feature/pet_details/presentation/cubit/pet_details_cubit.dart';
import 'package:pet_application/feature/pet_details/presentation/pages/pet_details_screen.dart';
import 'package:pet_application/feature/splash_screen.dart';

import 'route_observer.dart';
import 'route_paths.dart';

GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();

final CustomGoRouterObserver customGoRouterObserver = CustomGoRouterObserver();

final routes = GoRouter(
  initialLocation: Routes.splashScreen,
  navigatorKey: navigatorKey,
  debugLogDiagnostics: true,
  observers: [],
  routes: [
    GoRoute(path: Routes.splashScreen, builder: (_, __) => SplashScreen()),

    GoRoute(
      path: Routes.onboardingScreen,
      builder: (_, __) => OnBoardingScreen(),
    ),

    GoRoute(
      path: Routes.mainScreen,
      builder: (_, __) => BlocProvider(
        create: (context) => sl<MainCubit>()..initialize(),
        child: MainLayout(),
      ),
    ),
    GoRoute(
      path: Routes.favoritePets,
      builder: (_, __) => FavoritePetsScreen(),
    ),
    GoRoute(
      path: Routes.homeScreen,
      builder: (_, __) => BlocProvider(
        create: (context) => sl<HomeCubit>()..getCatBreeds(),
        child: HomeScreen(),
      ),
    ),
    GoRoute(
      name: 'petDetails', 
      path: '/pet-details/:petId',
      builder: (context, state) {
        final petId =
            state.pathParameters['petId'] ?? '';     final extra = state.extra as Map<String, dynamic>?;
        final imageUrl = extra?['imageUrl'] as String?;

        return BlocProvider(
          create: (context) => sl<PetDetailsCubit>(),
          child: PetDetailScreen(
            petId: petId, // Now passing String
            imageUrl: imageUrl,
          ),
        );
      },
    ),
  ],
);
