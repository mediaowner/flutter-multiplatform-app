import 'package:flutter/material.dart';

class FeatureItem1 extends StatelessWidget{
  final String labelText;

  const FeatureItem1 ({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.9125,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
        border: Border.all(width: 1, color: const Color(0xFFC5C8D4))
      ),
      child: TextField(
        cursorColor: Colors.black,
        cursorHeight: 18,
        maxLength: 30,
        style: const TextStyle(
          fontFamily: 'RobotoRegular',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color(0xFF2F2F48),
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 12),
          border: InputBorder.none,
          counterText: '',
          labelText: labelText,
          labelStyle: const TextStyle(
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