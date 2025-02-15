import 'package:flutter/material.dart';
import 'package:nafta24/features/main_screen/buttons/buttons.dart';

import '../../styles/styles.dart';

class BanCardButton extends StatelessWidget {
  const BanCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9125,
      height: size.height * 0.065,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        border: Border.all(width: 1, color: const Color(0xFFDA251D)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            _showConfirmationDialog(context);
          },
          child: const Center(
            child: Text(
              'Заблокировать карту',
              style: RedButtonTextStyles.buttontext,
            ),
          ),
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final size = MediaQuery.of(context).size;
        return Center(  // Center to ensure the dialog is centered
          child: SizedBox(
            width: size.width * 1.0,
            height: size.height * 0.4,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: const EdgeInsets.all(16.0),
              content: Stack(
                children: [
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Вы уверены, что хотите заблокировать карту?',
                        style: TextStyle(
                          fontFamily: 'RobotoMedium',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xFF2F2F48),
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AgreeButton(),
                          DiscardButton()
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    right: -10.0,
                    top: -10.0,
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
