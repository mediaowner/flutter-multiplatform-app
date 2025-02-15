// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../buttons/buttons.dart';
import '../../items/items.dart';
import '../../widgets/widgets.dart';


// import 'package:logging/logging.dart';

// import '../../../setvices/services.dart';


@RoutePage()
class JuridicalMainPage extends StatefulWidget {
  const JuridicalMainPage({super.key});

  @override
  State<JuridicalMainPage> createState() => JuridicalMainPageState();
}

class JuridicalMainPageState extends State<JuridicalMainPage> {
//   final Logger _logger = Logger('MainPageState');

//   String? cardNumber; // Declare cardNumber as a String
//   int? points; // Declare points as an int
//   String? bonusSchemeName;

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
    return const Scaffold(
      backgroundColor: Color(0xFFFBFBFF),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 52)),
          InnItem(),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          InfoItem(),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          CardWidget(),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          AddFuelButton(),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          InfoButton(),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          DetailInfoButton(),
        ],
      )
    );
  }
}
