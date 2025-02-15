import 'package:flutter/material.dart';

import '../../buttons/buttons.dart'; // Import your button widgets

class NearWidget extends StatelessWidget {
  const NearWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: size.width * 0.9125,
          child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Рядом с вами',
              style: TextStyle(
                color: Color(0xFF2F2F48),
                fontSize: 18,
                fontFamily: 'RobotoMedium',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                ButtonGroup(),
              ],
            ),
          ],
        ),
        ),
      ),
    );
  }
}