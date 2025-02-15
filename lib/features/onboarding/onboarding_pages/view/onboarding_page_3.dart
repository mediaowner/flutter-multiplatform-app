// ignore_for_file: sized_box_for_whitespace

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_svg/svg.dart';

import '../../../../router/router.dart';
import '../../buttons/view/view.dart';
import '../../constants/view/view.dart';
import '../../text_style/view/view.dart';

@RoutePage()
class OnBoardingPage3 extends StatefulWidget {
  const OnBoardingPage3({super.key});

  @override
  State<OnBoardingPage3> createState() => OnBoardingPage3State();
}

class OnBoardingPage3State extends State<OnBoardingPage3> {
  @override
  void initState() {
    super.initState();
    // Устанавливаем флаг, что пользователь видел онбординг
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('hasSeenOnboarding3', true);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _navigateToNextPage() {
    context.router.replace(const IndividualJoinRoute());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                      'ИНФОРМИРУЕМ\nТОЛЬКО О САМОМ\nВАЖНОМ',
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
                      'Расскажем об акциях, услугах,\nновых заправках',
                      style: OnBoardingTextStyles.bodytext
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 54,),
              Center(
                child: Image.asset('assets/images/ob_page_3.png', width: size.width * 0.565),
                ),
              TurnOnNotificationsButton(onTap: _navigateToNextPage),
            ],
          ),
        ),
      ),
    );
  }
}