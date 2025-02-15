import 'package:flutter/material.dart';
import 'package:nafta24/features/auth_screen/auth_pages/view/view.dart';

class LogInJuridicalButton extends StatelessWidget {
  final VoidCallback onTap;
  final JuridicalAuthPageState juridicalAuthPageState;

  const LogInJuridicalButton({super.key, required this.onTap, required this.juridicalAuthPageState});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9125,
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
            onTap();
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Войти',
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

