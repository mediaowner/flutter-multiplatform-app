import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import '../../constants/view/view.dart';
import '../../text_style/view/view.dart';


class FeatureItem1 extends StatelessWidget {
  final String icon;
  final String text;

  const FeatureItem1({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.height * 0.1,
          width: size.width * 0.9125,
          padding: OnBoardingPaddings.itemPadding,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(14.0)),
             color: OnBoardingColors.itemColor,
          ),
          child: Row(
            children: [
              SvgPicture.asset(
              icon,
              width: size.width * 0.06,
              ),
              const SizedBox(width: 12),
              Text(
                text,
                style: ItemTextStyles.itemText(context)
              ),
            ],
          ),
        ),
      ],
    );
  }
}
