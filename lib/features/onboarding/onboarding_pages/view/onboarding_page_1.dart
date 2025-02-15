// ignore_for_file: sized_box_for_whitespace

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../router/router.dart';
import '../../buttons/view/view.dart';
import '../../constants/view/view.dart';
import '../../items/view/view.dart';

@RoutePage()
class OnBoardingPage1 extends StatefulWidget {
  const OnBoardingPage1({super.key});

  @override
  State<OnBoardingPage1> createState() => OnBoardingPage1State();
}

class OnBoardingPage1State extends State<OnBoardingPage1> {
  @override
  void initState() {
    super.initState();
    // Устанавливаем флаг, что пользователь видел онбординг
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('hasSeenOnboarding1', true);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _navigateToNextPage() {
    // Переход на следующий экран
    context.router.replace(const OnBoardingRoute2());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          child: Column(
            children: [
              OnBoardingSizedBoxes.logoSpace,
              Center(
                child: SvgPicture.asset(
                  'assets/images/svg/nafta_main_logo.svg',
                  width: size.width * 0.72, // 60% от ширины экрана
                ),
              ),
              OnBoardingSizedBoxes.logoSpace,
              const FeatureItem1(
                icon: 'assets/images/svg/star.svg',
                text: 'высокий уровень сервиса',
              ),
              OnBoardingSizedBoxes.itemSpace,
              const FeatureItem1(
                icon: 'assets/images/svg/award.svg',
                text: 'выгодная программа\nлояльности',
              ),
              OnBoardingSizedBoxes.itemSpace,
              const FeatureItem1(
                icon: 'assets/images/svg/oil_station.svg',
                text: 'заправляйтесь, не выходя\nиз транспортного средства',
              ),
              OnBoardingSizedBoxes.itemSpace,
              const FeatureItem1(
                icon: 'assets/images/svg/percent.svg',
                text: 'оплачивайте баллами\nдо 100% заказа',
              ),
              OnBoardingSizedBoxes.buttonSpace,
              GetStartedButton(onTap: _navigateToNextPage),
            ],
          ),
        ),
      ),
    );
  }
}