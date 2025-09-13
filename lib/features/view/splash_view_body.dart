import 'package:bookly/features/home/home_views.dart';
import 'package:bookly/features/widget/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this ,
    duration: const Duration(milliseconds: 900)
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero).animate(animationController);

      animationController.forward();

      navigatorToHome();
     
  }

  void navigatorToHome() {
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(const HomeViews());
    });
  }
  @override
  void dispose(){
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/Logo.png'),
        const SizedBox(height: 15,),
        SlidingText(
          animationController: animationController,
          slidingAnimation: slidingAnimation)
      ],
    );
  }
}

