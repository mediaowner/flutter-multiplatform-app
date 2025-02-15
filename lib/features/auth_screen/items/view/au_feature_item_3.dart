import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';

class FeatureItem3 extends StatelessWidget {
  final TextEditingController controller;

  const FeatureItem3({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * 0.9125,
          height: size.height * 0.065,
          margin: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
            border: Border.all(width: 1, color: const Color(0xFFC5C8D4)),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 18, top: 13, bottom: 13),
                width: size.width * 0.05,
                height: size.height * 0.035,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFFDCDCDC)),
                ),
                child: SvgPicture.asset(
                  'assets/images/svg/rus_flag.svg',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 6, top: 12),
                width: size.width * 0.04,
                height: size.height * 0.045,
                child: const Text(
                  '+7',
                  style: TextStyle(
                    fontFamily: 'RobotoRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF2F2F48),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 6, top: 10, bottom: 12),
                width: 1,
                height: size.height * 0.04,
                color: const Color(0xFFC5C8D4),
              ),
              Container(
                width: size.width * 0.22,
                height: size.height * 0.065,
                padding: const EdgeInsets.only(left: 3, top: 7),
                child: CupertinoTextField(
                  controller: controller,
                  cursorColor: Colors.black,
                  cursorHeight: 24,
                  maxLength: 10,
                  autofocus: true,
                  style: const TextStyle(
                    fontFamily: 'RobotoRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF2F2F48),
                  ),
                  decoration: const BoxDecoration(
                    border: null,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: false,
                    decimal: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
