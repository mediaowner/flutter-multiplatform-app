import 'package:flutter/material.dart';

import '../../../main_screen/styles/view/view.dart';



class SendClaimButton extends StatelessWidget {

  const SendClaimButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width * 0.9125,
          height: size.height * 0.065,
          decoration: const BoxDecoration(
            color: Color(0xFF0B26BF),
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: const Material(
            color: Colors.transparent,
            child: InkWell(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const ClaimPage(),
              //       settings: 
              //       const RouteSettings(
              //         arguments: {
              //           'duration': Duration(milliseconds: 500),
              //         },
              //       ),
              //     ),
              //   );
              // },
              child: Center(
                child: Text(
                  'Отправить жалобу',
                  style: MainButtonTextStyles.buttontext
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
