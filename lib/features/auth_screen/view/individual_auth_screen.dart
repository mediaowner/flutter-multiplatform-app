import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/router.dart';


class IndividualAuthScreen extends StatefulWidget {
  const IndividualAuthScreen({super.key});

  @override
  IndividualAuthScreenState createState() => IndividualAuthScreenState();
}

class IndividualAuthScreenState extends State<IndividualAuthScreen> {
  late String phoneNumber;

  @override
  void initState() {
    super.initState();
    phoneNumber = '';
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: [
          const IndividualJoinRoute(),
          const IndividualAuthRoute(),
          IndividualCodeRoute(phoneNumber: phoneNumber),
          const IndividualDataRoute(),
        ],
    );
  }
}