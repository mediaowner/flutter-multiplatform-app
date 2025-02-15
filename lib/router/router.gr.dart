// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutPage(),
      );
    },
    AddCardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddCardPage(),
      );
    },
    BillsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BillsPage(),
      );
    },
    BonusRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BonusPage(),
      );
    },
    ClaimRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ClaimPage(),
      );
    },
    FaqRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FaqPage(),
      );
    },
    GasStationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GasStationPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    IndividualAuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IndividualAuthPage(),
      );
    },
    IndividualCodeRoute.name: (routeData) {
      final args = routeData.argsAs<IndividualCodeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: IndividualCodePage(
          key: args.key,
          phoneNumber: args.phoneNumber,
        ),
      );
    },
    IndividualDataRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IndividualDataPage(),
      );
    },
    IndividualJoinRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IndividualJoinPage(),
      );
    },
    InviteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InvitePage(),
      );
    },
    JuridicalAuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const JuridicalAuthPage(),
      );
    },
    JuridicalGasRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const JuridicalGasPage(),
      );
    },
    JuridicalHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const JuridicalHomeScreen(),
      );
    },
    JuridicalJoinRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const JuridicalJoinPage(),
      );
    },
    JuridicalMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const JuridicalMainPage(),
      );
    },
    JuridicalMenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const JuridicalMenuPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    MenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MenuPage(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationsPage(),
      );
    },
    OnBoardingRoute1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage1(),
      );
    },
    OnBoardingRoute2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage2(),
      );
    },
    OnBoardingRoute3.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage3(),
      );
    },
    PersonalDataRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonalDataPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    SupportRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SupportPage(),
      );
    },
  };
}

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddCardPage]
class AddCardRoute extends PageRouteInfo<void> {
  const AddCardRoute({List<PageRouteInfo>? children})
      : super(
          AddCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BillsPage]
class BillsRoute extends PageRouteInfo<void> {
  const BillsRoute({List<PageRouteInfo>? children})
      : super(
          BillsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BillsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BonusPage]
class BonusRoute extends PageRouteInfo<void> {
  const BonusRoute({List<PageRouteInfo>? children})
      : super(
          BonusRoute.name,
          initialChildren: children,
        );

  static const String name = 'BonusRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ClaimPage]
class ClaimRoute extends PageRouteInfo<void> {
  const ClaimRoute({List<PageRouteInfo>? children})
      : super(
          ClaimRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClaimRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FaqPage]
class FaqRoute extends PageRouteInfo<void> {
  const FaqRoute({List<PageRouteInfo>? children})
      : super(
          FaqRoute.name,
          initialChildren: children,
        );

  static const String name = 'FaqRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GasStationPage]
class GasStationRoute extends PageRouteInfo<void> {
  const GasStationRoute({List<PageRouteInfo>? children})
      : super(
          GasStationRoute.name,
          initialChildren: children,
        );

  static const String name = 'GasStationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IndividualAuthPage]
class IndividualAuthRoute extends PageRouteInfo<void> {
  const IndividualAuthRoute({List<PageRouteInfo>? children})
      : super(
          IndividualAuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndividualAuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IndividualCodePage]
class IndividualCodeRoute extends PageRouteInfo<IndividualCodeRouteArgs> {
  IndividualCodeRoute({
    Key? key,
    required String phoneNumber,
    List<PageRouteInfo>? children,
  }) : super(
          IndividualCodeRoute.name,
          args: IndividualCodeRouteArgs(
            key: key,
            phoneNumber: phoneNumber,
          ),
          initialChildren: children,
        );

  static const String name = 'IndividualCodeRoute';

  static const PageInfo<IndividualCodeRouteArgs> page =
      PageInfo<IndividualCodeRouteArgs>(name);
}

class IndividualCodeRouteArgs {
  const IndividualCodeRouteArgs({
    this.key,
    required this.phoneNumber,
  });

  final Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'IndividualCodeRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [IndividualDataPage]
class IndividualDataRoute extends PageRouteInfo<void> {
  const IndividualDataRoute({List<PageRouteInfo>? children})
      : super(
          IndividualDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndividualDataRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IndividualJoinPage]
class IndividualJoinRoute extends PageRouteInfo<void> {
  const IndividualJoinRoute({List<PageRouteInfo>? children})
      : super(
          IndividualJoinRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndividualJoinRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InvitePage]
class InviteRoute extends PageRouteInfo<void> {
  const InviteRoute({List<PageRouteInfo>? children})
      : super(
          InviteRoute.name,
          initialChildren: children,
        );

  static const String name = 'InviteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [JuridicalAuthPage]
class JuridicalAuthRoute extends PageRouteInfo<void> {
  const JuridicalAuthRoute({List<PageRouteInfo>? children})
      : super(
          JuridicalAuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'JuridicalAuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [JuridicalGasPage]
class JuridicalGasRoute extends PageRouteInfo<void> {
  const JuridicalGasRoute({List<PageRouteInfo>? children})
      : super(
          JuridicalGasRoute.name,
          initialChildren: children,
        );

  static const String name = 'JuridicalGasRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [JuridicalHomeScreen]
class JuridicalHomeRoute extends PageRouteInfo<void> {
  const JuridicalHomeRoute({List<PageRouteInfo>? children})
      : super(
          JuridicalHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'JuridicalHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [JuridicalJoinPage]
class JuridicalJoinRoute extends PageRouteInfo<void> {
  const JuridicalJoinRoute({List<PageRouteInfo>? children})
      : super(
          JuridicalJoinRoute.name,
          initialChildren: children,
        );

  static const String name = 'JuridicalJoinRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [JuridicalMainPage]
class JuridicalMainRoute extends PageRouteInfo<void> {
  const JuridicalMainRoute({List<PageRouteInfo>? children})
      : super(
          JuridicalMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'JuridicalMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [JuridicalMenuPage]
class JuridicalMenuRoute extends PageRouteInfo<void> {
  const JuridicalMenuRoute({List<PageRouteInfo>? children})
      : super(
          JuridicalMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'JuridicalMenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MenuPage]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute({List<PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationsPage]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute({List<PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingPage1]
class OnBoardingRoute1 extends PageRouteInfo<void> {
  const OnBoardingRoute1({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute1.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingPage2]
class OnBoardingRoute2 extends PageRouteInfo<void> {
  const OnBoardingRoute2({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute2.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingPage3]
class OnBoardingRoute3 extends PageRouteInfo<void> {
  const OnBoardingRoute3({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute3.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute3';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PersonalDataPage]
class PersonalDataRoute extends PageRouteInfo<void> {
  const PersonalDataRoute({List<PageRouteInfo>? children})
      : super(
          PersonalDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalDataRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SupportPage]
class SupportRoute extends PageRouteInfo<void> {
  const SupportRoute({List<PageRouteInfo>? children})
      : super(
          SupportRoute.name,
          initialChildren: children,
        );

  static const String name = 'SupportRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
