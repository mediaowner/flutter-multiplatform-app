// ignore_for_file: sized_box_for_whitespace

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_svg/svg.dart';

import '../../../../router/router.dart';
import '../../buttons/view/view.dart';
import '../../text_style/view/view.dart';
import '../../constants/view/view.dart';

@RoutePage()
class OnBoardingPage2 extends StatefulWidget {
  const OnBoardingPage2({super.key});

  @override
  State<OnBoardingPage2> createState() => OnBoardingPage2State();
}

class OnBoardingPage2State extends State<OnBoardingPage2> {

    @override
  void initState() {
    super.initState();
    // Устанавливаем флаг, что пользователь видел онбординг
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('hasSeenOnboarding2', true);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _navigateToNextPage() {
    context.router.replace(const OnBoardingRoute3());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isSmallScreen = size.width < 600;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              OnBoardingSizedBoxes.logoSpace,
              Row(
                children: [
                  Container(
                    padding: OnBoardingPaddings.titlePadding,
                    child: const Text(
                      'НАШИ ЗАПРАВКИ\nРЯДОМ С ВАМИ',
                      style: OnBoardingTextStyles.headline
                    ),
                  ),
                ],
              ),
              OnBoardingSizedBoxes.itemSpace,
              Row(
                children: [
                  Container(
                    padding: OnBoardingPaddings.bodyTextPadding,
                    child: const Text(
                      'Поделитесь геопозицией, чтобы\nнайти ближайшие заправки',
                      style: OnBoardingTextStyles.bodytext
                    ),
                  ),
                ],
              ),
              OnBoardingSizedBoxes.textSpace,
              Center(
                child: Image.asset('assets/images/ob_page_2.png', width: isSmallScreen ? size.width * 0.5 : 0.625),
                ),
              ShowNearButton(onTap: _navigateToNextPage),
            ],
          ),
        ),
      ),
    );
  }
}