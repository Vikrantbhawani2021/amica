
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



import '../../Utils/Constants/constans_assets.dart';
import '../../Utils/Constants/routes.dart';
import '../Onboarding Screen/Pages/onboarding_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  double opacity = 0;
  double opacity0 = 0;

  bool isinited = false;


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
              (context) =>
                  OnboardScreen()
          )
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Images.splash), fit: BoxFit.fill)),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     ConstrainedBox(
      //       constraints: BoxConstraints(
      //           maxHeight: MediaQuery.of(context).size.height / 6),
      //       child: Center(
      //           child: AnimatedOpacity(
      //         opacity: opacity,
      //         duration: const Duration(seconds: 2),
      //         child: Image.asset(
      //           Images.logo,
      //           // height: 200,
      //         ),
      //       )),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 75),
      //       child: Center(
      //           child: AnimatedOpacity(
      //         opacity: opacity0,
      //         duration: const Duration(seconds: 2),
      //         child: Image.asset(
      //           Images.logo0,
      //           // height: 200,
      //         ),
      //       )),
      //     ),
      //   ],
      // ),
    );
  }
}
