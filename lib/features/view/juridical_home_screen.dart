// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../router/router.dart';

@RoutePage()
class JuridicalHomeScreen extends StatelessWidget {
  const JuridicalHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        JuridicalMainRoute(),
        JuridicalGasRoute(),
        JuridicalMenuRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: const Color(0xFF2F2F48),
            unselectedItemColor: const Color(0xFF7A81A6),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            // selectedFontSize: 14,
            // unselectedFontSize: 14,
            selectedLabelStyle: const TextStyle(
              fontSize: 14,
              fontFamily: 'RobotoMedium',
              fontWeight: FontWeight.w500,
              color: Color(0xFF2F2F48),
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 14,
              fontFamily: 'RobotoRegular',
              fontWeight: FontWeight.w400,
              color: Color(0xFF7A81A6),
            ),
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  height: 32,
                  width: 64,
                  decoration: BoxDecoration(
                    color: tabsRouter.activeIndex == 0 ? const Color(0xFF0B26BF) : Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(24.0),
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/svg/home.svg',
                      color: tabsRouter.activeIndex == 0 ? Colors.white : const Color(0xFF7A81A6),
                      height: 20,
                      width: 18,
                    ),
                  ),
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 32,
                  width: 64,
                  decoration: BoxDecoration(
                    color: tabsRouter.activeIndex == 1 ? const Color(0xFF0B26BF) : Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(24.0),
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/svg/local_gas_station.svg',
                      color: tabsRouter.activeIndex == 1 ? Colors.white : const Color(0xFF7A81A6),
                      height: 20,
                      width: 18,
                    ),
                  ),
                ),
                label: 'АЗС',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 32,
                  width: 64,
                  decoration: BoxDecoration(
                    color: tabsRouter.activeIndex == 2 ? const Color(0xFF0B26BF) : Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(24.0),
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/svg/menu.svg',
                      color: tabsRouter.activeIndex == 2 ? Colors.white : const Color(0xFF7A81A6),
                      height: 16,
                      width: 14,
                    ),
                  ),
                ),
                label: 'Меню',
              ),
            ],
          ),
        );
      },
    );
  }
}
