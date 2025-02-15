import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nafta24/features/main_screen/buttons/buttons.dart';

import '../../items/items.dart';



@RoutePage()
class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: size.height*0.1,
        title: const Text(
          'Добавить карту',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 22,
            color: Color(0xFF2F2F48),
          ),
        ),
      ),
      body: const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 24,),
            AddCardItem(labelText: 'Введите номер бонусной карты'),
            SizedBox(height: 24,),
            AddCardItem(labelText: 'ПИН-код карты (на упаковке)'),
            SizedBox(height: 16,),
            SaveCardButton()
          ],
        ),
      ),
    );
  }
}