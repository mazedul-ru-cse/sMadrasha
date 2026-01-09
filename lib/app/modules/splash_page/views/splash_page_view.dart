import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../data/assets_names.dart';
import '../controllers/splash_page_controller.dart';

class SplashPageView extends GetView<SplashPageController> {
  const SplashPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsNames.instance.splash),
            fit: BoxFit.cover,
        ),

      ),

        child: TweenAnimationBuilder<Offset>(
          tween: Tween(begin: const Offset(0, -1), end: Offset.zero),
          duration: const Duration(milliseconds: 5000),
          curve: Curves.bounceInOut,
          builder: (context, offset, child) {
            final opacity = (1.0 + offset.dy).clamp(0.0, 1.0);
            return Opacity(
              opacity: opacity,
              child: FractionalTranslation(
                translation: offset,
                child: child,
              ),
            );
          },
          child: SizedBox(
            width: 150,
            height: 150,
            child: Image.asset(AssetsNames.instance.logo, fit: BoxFit.contain),
          ),
        )
      )
    );

  }
}
