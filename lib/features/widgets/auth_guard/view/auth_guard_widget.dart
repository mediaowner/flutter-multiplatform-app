import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../router/router.dart';

class AuthGuard extends AutoRouteGuard {
  final SharedPreferences prefs;

  AuthGuard(this.prefs);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // Проверяем, авторизован ли пользователь или прошел ли он этапы OnBoarding
    final isAuthenticated = checkUserAuthentication(); // Ваша логика проверки
    final isOnBoarded = checkOnBoardingStatus(); // Ваша логика проверки

    if (isAuthenticated) {
      resolver.next(true); // Позволяем навигацию к целевой странице
    } else if (!isOnBoarded) {
      router.push(const OnBoardingRoute1());
    } else {
      router.push(const IndividualJoinRoute());
    }
  }

  bool checkUserAuthentication() {
    // Ваша логика проверки аутентификации пользователя
    return prefs.getBool('isAuthenticated') ?? false;
  }

  bool checkOnBoardingStatus() {
    // Ваша логика проверки статуса прохождения OnBoarding
    return prefs.getBool('isOnBoarded') ?? false;
  }
}


// ignore_for_file: deprecated_member_use

// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';


// @RoutePage()
// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => MainPageState();
// }

// class MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: SliversApp,
//       body: Container(
//         color: const Color(0xFFFBFBFF),
//         // child: 
//         // Column(
//         //   children: [
//         //     SizedBox(
//         //       height: 150,
//         //       child: Expanded(
//         //         child: ListView.builder(
//         //           scrollDirection: Axis.horizontal,
//         //           itemCount: 10,
//         //           prototypeItem: const SizedBox(height: 120, width: 120,),
//         //           itemBuilder: (context, index) => Container(
//         //             decoration: BoxDecoration(
//         //               borderRadius: BorderRadius.circular(25),
//         //               border: Border.all(width: 2, color: const Color(0xFF0B26BF))
//         //             ),
//         //             margin: const EdgeInsets.only(left: 20.0, top: 56.0),
//         //             padding: const EdgeInsets.all(2.0),
//         //             child: Container(
//         //               height: 140,
//         //               width: 110,
//         //               child: SvgPicture.asset('assets/images/svg/promo1.svg'),
//         //             ),
//         //           ),
//         //         ),
//         //       ),
//         //     ),
//         //   ],
//         // ),
//       ),
//     );
//   }
// }

