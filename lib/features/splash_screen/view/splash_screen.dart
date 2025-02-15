import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../router/router.dart';


@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  bool _isMounted = false;

  @override
  void initState() {
    super.initState();
    _isMounted = true;
    FlutterNativeSplash.remove();
    _checkOnboardingStatus();
  }

  @override
  void dispose() {
    _isMounted = false;
    super.dispose();
  }

  Future<void> _checkOnboardingStatus() async {
    if (!_isMounted) return; // Проверка, что виджет все еще существует

    final prefs = await SharedPreferences.getInstance();
    final hasSeenOnboarding1 = prefs.getBool('hasSeenOnboarding1') ?? false;
    final hasSeenOnboarding2 = prefs.getBool('hasSeenOnboarding2') ?? false;
    final hasSeenOnboarding3 = prefs.getBool('hasSeenOnboarding3') ?? false;
    final hasAuthIndividual = prefs.getBool('hasAuthIndividual') ?? false;
    final hasCodeIndividual = prefs.getBool('hasCodeIndividual') ?? false;
    final hasDataIndividual = prefs.getBool('hasDataIndividual') ?? false;
    final hasAuthJuridical = prefs.getBool('hasAuthJuridical') ?? false;

    if (!_isMounted) return; // Проверка, что виджет все еще существует

    if ((hasSeenOnboarding1 && hasSeenOnboarding2 && hasSeenOnboarding3 && hasAuthJuridical) || (hasSeenOnboarding1 && hasSeenOnboarding2 && hasSeenOnboarding3 && hasAuthIndividual && hasCodeIndividual && hasDataIndividual)) {
      if (_isMounted) {
        context.router.replace(const HomeRoute());
      }
    } else if(hasSeenOnboarding1 && hasSeenOnboarding2 && hasSeenOnboarding3){
      if (_isMounted) {
        context.router.replace(const IndividualJoinRoute());
      }
    } else {
      if (_isMounted) {
        context.router.replace(const OnBoardingRoute1());
      }
    }
    if (_isMounted) {
      FlutterNativeSplash.remove();
      Future.delayed(const Duration(milliseconds: 500), () {
        context.router.replace(const OnBoardingRoute1());
      });
    }
  }


  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: SvgPicture.asset(
        'assets/images/svg/nafta_main_logo.svg',
        width: size.width * 0.82, // 60% от ширины экрана
      ),
    );
  }
}
