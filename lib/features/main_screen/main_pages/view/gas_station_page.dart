import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class GasStationPage extends StatefulWidget {
  const GasStationPage({super.key});

  @override
  State<GasStationPage> createState() => GasStationPageState();
}

class GasStationPageState extends State<GasStationPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: const Color(0xFFFBFBFF),
        color: Colors.black,
      ),
    );
  }
}