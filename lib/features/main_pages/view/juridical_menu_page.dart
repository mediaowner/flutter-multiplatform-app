import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../buttons/buttons.dart';
import '../../items/items.dart';


@RoutePage()
class JuridicalMenuPage extends StatelessWidget {
  const JuridicalMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFBFBFF),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 68)),
          MenuItem(text: 'Вопросы и ответы'),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          MenuItem(text: 'Служба поддержки'),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          MenuItem(text: 'Уведомления'),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          MenuItem(text: 'О компании'),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SendClaimButton()
        ],
      ),
    );
  }
}