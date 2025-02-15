import 'package:flutter/material.dart';

class GetCodeButton extends StatelessWidget {
  final bool isEnabled;
  final String phoneNumber;
  final VoidCallback onTap;

  const GetCodeButton
  ({
    super.key, 
    required this.isEnabled, 
    required this.phoneNumber, 
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9125,
      height: size.height * 0.07,
      decoration: BoxDecoration(
        color: isEnabled ? const Color(0xFF0B26BF) : const Color(0xFFC5C8D4),
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isEnabled
              ? () {
                  onTap();
                }
              : null,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Отправить код',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'RobotoMedium',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
