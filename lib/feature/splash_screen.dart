import 'package:flutter/material.dart';
import 'package:pet_application/core/app_startup/navigation_service.dart';
import 'package:pet_application/core/widgets/app_svg.dart';

import '../core/constants/assets_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    animate().then((_) async {
      await Future.delayed(const Duration(seconds: 2));

      AuthNavigationService(context).navigate();
    });
  }

  Future<void> animate() async {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SlideTransition(
            position: _animation,
            child: AppSVG(assetName: AssetsManager.logoSvg),
          ),
        ),
      ),
    );
  }
}
