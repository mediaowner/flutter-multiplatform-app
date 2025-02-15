import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';


class FeatureItem6 extends StatelessWidget{
  final String icon;
  final String text;

  const FeatureItem6({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 44),
          width: size.width * 0.085,
          height: size.height * 0.05,
          decoration: BoxDecoration(
            color: const Color(0xFFE5E9FF),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              icon,
              width: 14,
            ),
          ),
        ),
        const SizedBox(width: 20.0),
        Text(
          text,
          style: const TextStyle
          (
            fontFamily: 'RobotoRegular',
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF2F2F48),
            decoration: TextDecoration.none
          ),
        ),
      ],
    );
  }
}