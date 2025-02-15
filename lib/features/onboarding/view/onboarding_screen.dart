import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/router.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  
  @override
  Widget build(BuildContext context) {
    return const AutoTabsRouter(
        routes: [
          OnBoardingRoute1(),
          OnBoardingRoute2(),
          OnBoardingRoute3(),
        ],
    );
  }
}