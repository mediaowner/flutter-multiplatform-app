import 'package:flutter/material.dart';

class ClaimPic extends StatelessWidget{
  const ClaimPic({super.key});

  @override
  Widget build(BuildContext context){
    // final size = MediaQuery.of(context).size;
    return Container(
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
        color: Color(0xFFE9EBF8),
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      child: const Align(
        alignment: Alignment.center,
        child: Icon(
          Icons.add,
          color: Color(0xFF2F2F48),
        ),
      ),
    );
  }
}