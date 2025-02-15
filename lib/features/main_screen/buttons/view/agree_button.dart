import 'package:flutter/material.dart';

import '../../styles/styles.dart';


class AgreeButton extends StatelessWidget {

  const AgreeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      height: size.height * 0.065,
      decoration: const BoxDecoration(
        color: Color(0xFFE5E9FF),
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
              'Да',
              style: DarkButtonTextStyles.buttontext
            ),
          ),
        ),
      ),
    );
  }
}
