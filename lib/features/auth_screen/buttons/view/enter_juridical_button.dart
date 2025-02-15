import 'package:flutter/material.dart';

import '../../auth_pages/view/view.dart';


class EnterJuridicalButton extends StatelessWidget {
  final IndividualJoinPageState individualJoinPageState;

  const EnterJuridicalButton(
    {
      super.key,
      required this.individualJoinPageState
    }
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9125,
      height: size.height * 0.065,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        border: Border.all(width: 1, color: const Color(0xFF0B26BF))
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const JuridicalJoinPage(), 
                settings: 
                  const RouteSettings(arguments: {
                    'duration': Duration(milliseconds: 300),
                  },
                ),
              ),
            );
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Войти как юр.лицо',
                style: TextStyle(
                  color: Color(0xFF0B26BF), 
                  fontSize: 16, 
                  fontFamily: 'RobotoMedium', 
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(width: 8), // Размер отступа в 8 пикселей
              Icon(
                Icons.arrow_forward, 
                color: Color(0xFF0B26BF), 
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

