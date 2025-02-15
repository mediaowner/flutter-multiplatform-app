import 'package:flutter/material.dart';

class InnItem extends StatelessWidget{

  const InnItem ({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width * 0.9125,
          height: size.height * 0.07,
          decoration: BoxDecoration(
            color: const Color(0xFFFBFBFF),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(width: 1, color: const Color(0xFFC5C8D4)),
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ИНН компании',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF2F2F48),
                    fontFamily: 'RobotoRegular',
                    fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  '34875999703090',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF2F2F48),
                    fontFamily: 'RobotoRegular',
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}