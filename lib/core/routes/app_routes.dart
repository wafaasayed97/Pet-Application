import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_application/core/di/services_locator.dart';

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
    // GoRoute(path: Routes.splashScreen, builder: (_, __) => SplashScreen()),
    // GoRoute(
    //   path: Routes.loginScreen,
    //   builder: (_, __) => BlocProvider(
    //     create: (context) => sl<LoginCubit>(),
    //     child: LoginScreen(),
    //   ),
    // ),
    // GoRoute(
    //   path: Routes.register,
    //   builder: (_, __) =>

    //    BlocProvider(
    //     create: (context) => sl<RegisterCubit>(),
    //     child: RegisterScreen(),
    //   ),
    // ),

    // GoRoute(
    //   path: Routes.otpScreen,
    //   builder: (_, __) {
    //     final otpArgs = __.extra as OtpArgs;
    //     return MultiBlocProvider(
    //       providers: [
    //         BlocProvider(create: (context) => sl<OtpCubit>()),
    //         BlocProvider(create: (context) => sl<ForgetPasswordCubit>()),
    //       ],
    //       child: OtpScreen(otpArgs: otpArgs),
    //     );
    //   },
    // ),
    // GoRoute(
    //   path: Routes.onboardingScreen,
    //   builder: (_, __) => OnBoardingScreen(),
    // ),
    // GoRoute(path: Routes.letsStart, builder: (_, __) => LetsStartScreen()),

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
