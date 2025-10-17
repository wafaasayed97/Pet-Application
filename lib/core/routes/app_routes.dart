import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_application/feature/onboarding/presentation/pages/onboarding_screen.dart';
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

    // GoRoute(
    //   path: Routes.mainScreen,
    //   builder: (_, __) => BlocProvider(
    //     create: (context) => sl<MainCubit>()..initialize(),
    //     child: MainLayout(),
    //   ),
    // ),
    // GoRoute(path: Routes.faceIdScreen, builder: (_, __) => FaceIDScreen()),
    // GoRoute(
    //   path: Routes.forgotPassword,
    //   builder: (_, __) => BlocProvider(
    //     create: (context) => sl<ForgetPasswordCubit>(),
    //     child: const ForgetPasswordScreen(),
    //   ),
    // ),
    // GoRoute(
    //   path: Routes.confirmPassword,
    //   builder: (_, __) {
    //     final confirmPasswordArgs = __.extra as ConfirmPasswordArgs;
    //     return BlocProvider(
    //       create: (context) => sl<ForgetPasswordCubit>(),
    //       child: ConfirmPasswordScreen(args: confirmPasswordArgs),
    //     );
    //   },
    // ),
    // GoRoute(
    //   path: Routes.profileScreen,
    //   builder: (_, __) => MultiBlocProvider(
    //     providers: [
    //       BlocProvider(create: (context) => sl<ProfileCubit>()),
    //       BlocProvider(create: (context) => sl<EditProfileCubit>()),
    //     ],
    //     child: const ProfileScreen(),
    //   ),
    // ),

    // GoRoute(path: Routes.projectsScreen, builder: (_, __) => ProjectsScreen()),
    // GoRoute(
    //   path: Routes.myAppointmentsScreen,
    //   builder: (_, __) => MyAppointmentsScreen(),
    // ),

    // GoRoute(
    //   path: Routes.unitDetailsScreen,
    //   builder: (_, __) => ModelDetailsScreen(),
    // ),
  ],
);
