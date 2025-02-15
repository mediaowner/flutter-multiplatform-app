import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class BillsPage extends StatelessWidget {
  const BillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: size.height*0.1,
        title: const Text(
          'История операций',
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
      ),
    );
  }
}