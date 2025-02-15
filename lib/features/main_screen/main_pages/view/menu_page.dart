import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nafta24/features/main_screen/main_pages/view/about_page.dart';
import 'package:nafta24/features/main_screen/main_pages/view/bonus_page.dart';
import 'package:nafta24/features/main_screen/main_pages/view/faq_page.dart';
import 'package:nafta24/features/main_screen/main_pages/view/notifications_page.dart';
import 'package:nafta24/features/main_screen/main_pages/view/support_page.dart';

import '../../buttons/buttons.dart';
import '../../items/items.dart';
import 'personal_data_page.dart';


@RoutePage()
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFBFBFF),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 68)),
          MenuItem(text: 'Личные данные', routeName: PersonalDataPage()),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          MenuItem(text: 'О бонусной программе', routeName: BonusPage(),),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          MenuItem(text: 'Вопросы и ответы', routeName: FaqPage(),),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          MenuItem(text: 'Служба поддержки', routeName: SupportPage(),),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          MenuItem(text: 'Уведомления', routeName: NotificationsPage(),),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          MenuItem(text: 'О компании', routeName: AboutPage(),),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SendClaimButton()
        ],
      ),
    );
  }
}