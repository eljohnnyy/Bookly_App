import 'package:flutter/material.dart';
import 'package:mybookly/core/utlis/assets.dart';

import 'Sliding_teat.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  //to change value
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    //duration
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    //to manage value
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
            //to move text
            animationController.forward();
           
    
  }
  @override
  void dispose() {
    
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 5,
        ),
        //to move text
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}

