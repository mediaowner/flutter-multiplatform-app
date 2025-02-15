import 'package:flutter/material.dart';

import '../../styles/styles.dart';


class DiscardButton extends StatelessWidget {

  const DiscardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      height: size.height * 0.065,
      decoration: const BoxDecoration(
        color: Color(0xFF0B26BF),
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Center(
            child: Text(
              'Нет',
              style: MainButtonTextStyles.buttontext
            ),
          ),
        ),
      ),
    );
  }
}
