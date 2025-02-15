import 'package:flutter/material.dart';

class ClaimText extends StatelessWidget{

  const ClaimText ({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width * 0.9125,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
        color: Colors.white,
        border: Border.all(width: 1, color: const Color(0xFFC5C8D4))
      ),
      child: const TextField(
        cursorColor: Colors.black,
        cursorHeight: 18,
        maxLength: 30,
        style: TextStyle(
          fontFamily: 'RobotoRegular',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color(0xFF2F2F48),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 12),
          border: InputBorder.none,
          counterText: '',
          labelText: 'Опишите свою проблему...',
          labelStyle: TextStyle(
            fontFamily: 'RobotoRegular',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xFF7A81A6),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        keyboardType: TextInputType.name,
      ),
    );
  }
}