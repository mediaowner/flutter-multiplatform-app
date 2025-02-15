// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../router/router.dart';
import '../../buttons/view/view.dart';

@RoutePage()
class JuridicalAuthPage extends StatefulWidget {
  const JuridicalAuthPage({super.key});

  @override
  State<JuridicalAuthPage> createState() => JuridicalAuthPageState();
}

class JuridicalAuthPageState extends State<JuridicalAuthPage> {

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('hasAuthJuridical', true);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _navigateToNextPage() {
    // Переход на следующий экран
    context.router.replace(const JuridicalHomeRoute());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 110),
            Center(
              child: SvgPicture.asset(
                'assets/images/svg/nafta_main_logo.svg',
                width: size.width * 0.72, // 60% от ширины экрана
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'ВХОД\nДЛЯ ЮРЕДИЧЕСКИХ ЛИЦ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'RobotoMedium',
                fontWeight: FontWeight.w500,
                fontSize: 28,
                color: Color(0xFF2F2F48),
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 50),
            Column(
              children: [
                Container(
                  width: size.width * 0.9125,
                  height: size.height * 0.065,
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 13),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                    border: Border.all(width: 1, color: const Color(0xFFC5C8D4))
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    cursorHeight: 24,
                    style: const TextStyle(
                      fontFamily: 'RobotoRegular',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0xFF2F2F48),
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'nafta24@nafta24.ru',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  width: size.width * 0.9125,
                  height: size.height * 0.065,
                  padding: const EdgeInsets.only(left: 20, top: 17, bottom: 13),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                    border: Border.all(width: 1, color: const Color(0xFFC5C8D4))
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    cursorHeight: 24,
                    style: const TextStyle(
                      fontFamily: 'RobotoRegular',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0xFF2F2F48),
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: '*****',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            LogInJuridicalButton(juridicalAuthPageState: this, onTap: _navigateToNextPage),
            const SizedBox(height: 25),
            Container(
              width: 350,
              height: 40,
              child: const Text(
                textAlign: TextAlign.center,
                'Забыли пароль? Закажите\nобратный звонок',
                style: TextStyle(
                  fontFamily: 'RobotoRegular',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}