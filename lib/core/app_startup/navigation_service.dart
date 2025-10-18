import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_application/core/helpers/user_helpers.dart';
import 'package:pet_application/core/routes/route_paths.dart';


class AuthNavigationService {
  final BuildContext context;

  AuthNavigationService(this.context);

  Future<void> navigate() async {

    if (UserHelpers.isFirstTime()) {
      context.pushReplacement(Routes.onboardingScreen);
    } else {
      context.pushReplacement(Routes.mainScreen);
    }

    // final localAuthEnabled = await sl<SecureStorage>().read(
    //   SecureStorageKeys.localAuthEnabled,
    // );
    // if (localAuthEnabled == 'true') {
    //   final auth = LocalAuthentication();
    //   bool didAuthenticate = false;
    //   int retryCount = 0;
    //   const maxRetries = 3;
    //
    //   while (!didAuthenticate && retryCount < maxRetries) {
    //     try {
    //       didAuthenticate = await auth.authenticate(
    //         localizedReason: 'Authenticate to continue',
    //         options: const AuthenticationOptions(
    //           biometricOnly: false,
    //           stickyAuth: true,
    //         ),
    //       );
    //     } catch (e) {
    //       debugPrint('Auth error: $e');
    //     }
    //
    //     if (!didAuthenticate) retryCount++;
    //   }
    //
    //   if (!didAuthenticate) {
    //     await sl<SecureStorage>().delete(SecureStorageKeys.userToken);
    //     context.pushReplacement(Routes.loginScreen);
    //     return;
    //   }
    // }
  }
}

