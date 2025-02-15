import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureItem5 extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final int index;
  final FocusNode? nextFocusNode; 

  const FeatureItem5({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.index,
    this.nextFocusNode, 
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: size.width * 0.07,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        border: Border.all(width: 1, color: const Color(0xFFC5C8D4)),
      ),
      padding: const EdgeInsets.only(left: 2, top: 5),
      child: CupertinoTextField(
        autofocus: true,
        controller: controller,
        focusNode: focusNode,
        maxLength: 1,
        cursorColor: Colors.black,
        cursorHeight: 12,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: 'RobotoMedium',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF2F2F48),
        ),
        decoration: const BoxDecoration(
          border: null,
        ),
        keyboardType: const TextInputType.numberWithOptions(
          signed: false,
          decimal: false,
        ),
        onChanged: (value) {
          if (value.length == 1 && nextFocusNode != null) {
            FocusScope.of(context).requestFocus(nextFocusNode!);
          }
        },
      ),
    );
  }
}
