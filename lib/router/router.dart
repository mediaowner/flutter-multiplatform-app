import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


import '../features/juridical_main_screen/main_pages/view/view.dart';
import '../features/juridical_main_screen/view/view.dart';
import '../features/main_screen/main_pages/view/view.dart';
import '../features/main_screen/main_screen.dart';
import '../features/onboarding/onboarding_pages/view/view.dart';
import '../features/auth_screen/auth_pages/view/view.dart';
import '../features/splash_screen/view/view.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: OnBoardingRoute1.page, path: '/onboarding1'),
    AutoRoute(page: OnBoardingRoute2.page, path: '/onboarding2'),
    AutoRoute(page: OnBoardingRoute3.page, path: '/onboarding3'),
    AutoRoute(page: IndividualJoinRoute.page, path: '/individual-join'),
    AutoRoute(page: IndividualAuthRoute.page, path: '/individual-auth'),
    AutoRoute(page: IndividualCodeRoute.page, path: '/individual-code'),
    AutoRoute(page: IndividualDataRoute.page, path: '/individual-data'),
    AutoRoute(page: JuridicalJoinRoute.page, path: '/juridical-join'),
    AutoRoute(page: JuridicalAuthRoute.page, path: '/juridical-auth'),
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      children: [
        AutoRoute(page: MainRoute.page, path: 'main'),
        AutoRoute(page: GasStationRoute.page, path: 'gas-station'),
        AutoRoute(page: MenuRoute.page, path: 'menu'),
        AutoRoute(page: AddCardRoute.page, path: 'addcard'),
        AutoRoute(page: ClaimRoute.page, path: 'sendclaim'),
        AutoRoute(page: BonusRoute.page, path: 'loyalty'),
        AutoRoute(page: SupportRoute.page, path: 'support'),
        AutoRoute(page: FaqRoute.page, path: 'faq'),
        AutoRoute(page: AboutRoute.page, path: 'about'),
        AutoRoute(page: BillsRoute.page, path: 'bills'),
        AutoRoute(page: PersonalDataRoute.page, path: 'personal-data'),

      ],
    ),
    AutoRoute(
      page: JuridicalHomeRoute.page,
      path: '/juridical',
      children: [
        AutoRoute(page: JuridicalMainRoute.page, path: 'main'),
        AutoRoute(page: JuridicalGasRoute.page, path: 'gas-station'),
        AutoRoute(page: JuridicalMenuRoute.page, path: 'menu'),
      ],
    ),
  ];
}