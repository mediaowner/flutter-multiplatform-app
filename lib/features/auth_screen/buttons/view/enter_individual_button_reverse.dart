import 'package:flutter/material.dart';
import '../../auth_pages/view/view.dart';


class EnterIndividualButtonReverse extends StatelessWidget {
  final JuridicalJoinPageState juridicalJoinPageState;

  const EnterIndividualButtonReverse(
    {
      super.key,
      required this.juridicalJoinPageState
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
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const IndividualJoinPage(), 
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
              Icon(
                Icons.arrow_back, 
                color: Color(0xFF0B26BF), 
                size: 18,
              ),
              SizedBox(width: 8),
              Text(
                'Войти как физ.лицо',
                style: TextStyle(
                  color: Color(0xFF0B26BF), 
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