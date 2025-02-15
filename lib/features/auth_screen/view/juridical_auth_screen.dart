import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/router.dart';


class JuridicalAuthScreen extends StatefulWidget {
  const JuridicalAuthScreen({super.key});

  @override
  JuridicalAuthScreenState createState() => JuridicalAuthScreenState();
}

class JuridicalAuthScreenState extends State<JuridicalAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return const AutoTabsRouter(
        routes: [
          JuridicalJoinRoute(),
          JuridicalAuthRoute(),
        ],
    );
  }
}