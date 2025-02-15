import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../router/router.dart';


class FirstTime extends StatefulWidget {
  final SharedPreferences prefs;

  const FirstTime({super.key, required this.prefs});

  @override
  FirstTimeState createState() => FirstTimeState();
}

class FirstTimeState extends State<FirstTime> {
  @override
  void initState() {
    super.initState();
    _hasShownOnboarding().then((hasShown) {
      if (hasShown) {
        // Если уже показывали, переходим на ваш главный экран
        context.router.replace(const IndividualJoinRoute()); 
      } else {
        // Если не показывали, переходим на экран "инструкций" 
        context.router.replace(const OnBoardingRoute1()); 
      }
    });
  }

  Future<bool> _hasShownOnboarding() async {
    return widget.prefs.getBool('hasShownOnboarding') ?? false; 
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink(); // Удалите ненужный код
  }
}
