import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget{
  final String text;

  const MenuItem ({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width * 0.9125,
          height: size.height * 0.07,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF0B26BF),
                offset: Offset(0.0, 2.0),
                blurRadius: 2.5,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 2.0),
                blurRadius: 5.0,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 16, top: 12),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF2F2F48),
                fontFamily: 'RobotoRegular',
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        ),
      ),
    );
  }
}