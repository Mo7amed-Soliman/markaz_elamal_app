import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaz_elamal_app/core/routes/routes.dart';
import 'package:markaz_elamal_app/core/helper/utils/app_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        context.pushReplacement(Routes.onBoardingView);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(Assets.imagesSplash),
      ),
    );
  }
}
