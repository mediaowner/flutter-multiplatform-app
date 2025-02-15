import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nafta24/features/main_screen/buttons/view/claim_button.dart';

import '../../items/items.dart';



@RoutePage()
class ClaimPage extends StatelessWidget {
  const ClaimPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: size.height*0.1,
        title: const Text(
          'Оставить жалобу',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 22,
            color: Color(0xFF2F2F48),
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 24,),
            const ClaimText(),
            const SizedBox(height: 24,),
            const Text(
              'Прикрепите фото',
              style: TextStyle(
                fontFamily: 'RobotoRegular',
                fontWeight: FontWeight.w500,
                color: Color(0xFF2F2F48)
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 16,),
            SizedBox(
              width: size.width * 0.6,
              child: Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClaimPic(),
                    ClaimPic(),
                    ClaimPic(),
                  ],
                ),
              )
            ),
            const SizedBox(height: 24,),
            const ClaimButton()
          ],
        ),
      ),
    );
  }
}