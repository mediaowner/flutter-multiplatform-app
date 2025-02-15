import 'package:flutter/material.dart';
import '../../auth_pages/view/view.dart';


class EnterJuridicalButtonReverse extends StatelessWidget {
  final JuridicalJoinPageState juridicalJoinPageState;

  const EnterJuridicalButtonReverse(
    {
      super.key,
      required this.juridicalJoinPageState
    }
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.065,
      decoration: const BoxDecoration(
        color: Color(0xFF0B26BF),
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const JuridicalAuthPage(), 
                settings: 
                  const RouteSettings(arguments: {
                    'duration': Duration(milliseconds: 500),
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
                  color: Colors.white, 
                  fontSize: 16, 
                  fontFamily: 'RobotoMedium', 
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

