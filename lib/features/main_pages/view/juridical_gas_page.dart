import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class JuridicalGasPage extends StatefulWidget {
  const JuridicalGasPage({super.key});

  @override
  State<JuridicalGasPage> createState() => JuridicalGasPageState();
}

class JuridicalGasPageState extends State<JuridicalGasPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: const Color(0xFFFBFBFF),
        color: Colors.red,
      ),
    );
  }
}