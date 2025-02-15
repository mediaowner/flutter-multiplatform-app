import 'package:flutter/material.dart';
import 'package:nafta24/features/main_screen/main_pages/view/add_card_page.dart';

import '../../../main_screen/styles/styles.dart';


class AddFuelButton extends StatelessWidget {

  const AddFuelButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width * 0.9125,
          height: size.height * 0.065,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            color: Color(0xFF0B26BF),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddCardPage(),
                    settings: 
                    const RouteSettings(
                      arguments: {
                        'duration': Duration(milliseconds: 500),
                      },
                    ),
                  ),
                );
              },
              child: const Center(
                child: Text(
                  'Добавить топливную карту',
                  style: MainButtonTextStyles.buttontext
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
