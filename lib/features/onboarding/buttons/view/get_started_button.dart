import 'package:flutter/material.dart';

import '../../constants/view/view.dart';
import '../../text_style/view/view.dart';


class GetStartedButton extends StatelessWidget {
  final VoidCallback onTap;

  const GetStartedButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.91,
      height: size.height * 0.065,
      decoration: const BoxDecoration(
        color: OnBoardingColors.buttonColor,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: const Center(
            child: Text(
              'Начать',
              style: ButtonTextStyles.buttontext
            ),
          ),
        ),
      ),
    );
  }
}
