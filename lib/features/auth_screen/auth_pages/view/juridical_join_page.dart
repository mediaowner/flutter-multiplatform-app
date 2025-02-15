// ignore_for_file: sized_box_for_whitespace

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../buttons/view/view.dart';
import '../../items/view/view.dart';


@RoutePage()
class JuridicalJoinPage extends StatefulWidget {
  const JuridicalJoinPage({super.key});

  @override
  State<JuridicalJoinPage> createState() => JuridicalJoinPageState();
}

class JuridicalJoinPageState extends State<JuridicalJoinPage> {
  late PageController pageController;
  int currentPage = 1;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return PageView(
      children: [
        Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.08),
                Center(
                  child: SvgPicture.asset(
                    'assets/images/svg/nafta_main_logo.svg',
                    width: size.width * 0.72,
                  ),
                ),
                SizedBox(height: size.height * 0.1),
                const Text(
                  'ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ',
                  style: TextStyle(
                    fontFamily: 'RobotoMedium',
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Color(0xFF2F2F48),
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: size.height * 0.06),
                const FeatureItem8(
                  icon: 'assets/images/svg/card.svg',
                  text: 'Возврат НДС',
                ),
                const SizedBox(height: 24),
                const FeatureItem6(
                  icon: 'assets/images/svg/coffee.svg',
                  text: 'Прозрачный учёт',
                ),
                const SizedBox(height: 24),
                const FeatureItem6(
                  icon: 'assets/images/svg/thumb_up.svg',
                  text: 'Персональный менеджер',
                ),
                SizedBox(height: size.height * 0.04),
                EnterJuridicalButtonReverse(juridicalJoinPageState: this),
                SizedBox(height: size.height * 0.07),
                const Text(
                  'Для входа как физ.лицо',
                  style: TextStyle(
                    fontFamily: 'RobotoRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF2F2F48),
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                const Text(
                  'листайте вбок',
                  style: TextStyle(
                    fontFamily: 'RobotoRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF2F2F48),
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                EnterIndividualButtonReverse(juridicalJoinPageState: this),
                SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        color: currentPage == 0 ? const Color(0xFFDA251D) : const Color(0xFFC4C4C4),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        color: currentPage == 1 ? const Color(0xFFDA251D) : const Color(0xFFC4C4C4),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}