// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../widgets_main/widgets.dart';
// import 'package:logging/logging.dart';

// import '../../../setvices/services.dart';


@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  // final Logger _logger = Logger('MainPageState');

  // String? cardNumber; // Declare cardNumber as a String
  // int? points; // Declare points as an int
  // String? bonusSchemeName;

//   @override
//   void initState() {
//   super.initState();
//   fetchCardData().then((data) {
//     setState(() {
//       cardNumber = data['CARD_ID'];
//       points = data['POINTS'];
//       bonusSchemeName = data['BONUS_SYS_NAME'];
//     });
//   }).catchError((error) {
//     _logger.severe('Error fetching card data: $error');
//   });
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFF),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 52)),
          PromoScroll(),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          const CardWidget(),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          const NearWidget(),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          NewsWidget(),
        ],
      )
    );
  }
}
