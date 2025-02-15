import 'package:flutter/material.dart';
import 'package:nafta24/features/main_screen/main_pages/view/add_card_page.dart';

import '../../../main_screen/styles/view/view.dart';


class InfoButton extends StatelessWidget {

  const InfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width * 0.9125,
          height: size.height * 0.065,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
            border: Border.all(width: 1, color: const Color(0xFF0B26BF))
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
                  'Выставить счет',
                  style: Main2ButtonTextStyles.buttontext
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
