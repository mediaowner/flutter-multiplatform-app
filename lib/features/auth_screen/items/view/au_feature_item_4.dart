import 'package:flutter/material.dart';

class FeatureItem4 extends StatefulWidget {
  const FeatureItem4({super.key});

  @override
  FeatureItem4State createState() => FeatureItem4State();
}

class FeatureItem4State extends State<FeatureItem4> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;

  void selectCheckbox(bool checkboxSelected) {
    setState(() {
      _isChecked1 = checkboxSelected;
      _isChecked2 = !checkboxSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9125,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              selectCheckbox(true);
            },
            child: Container(
              width: size.width * 0.03,
              height: size.height * 0.03,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: _isChecked1 ? const Color(0xFF0B26BF) : const Color(0xFF7A81A6),
                ),
                color: _isChecked1 ? const Color(0xFF0B26BF) : Colors.transparent,
              ),
              child: _isChecked1
                  ? Center(
                      child: Container(
                        width: size.width * 0.025,
                        height: size.height * 0.025,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFF0B26BF),
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : null,
            ),
          ),
          SizedBox(width: size.width * 0.02),
          const Text(
            'Мужской',
            style: TextStyle(
              fontFamily: 'RobotoRegular',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF2F2F48),
            ),
          ),
          SizedBox(width: size.width * 0.035),
          GestureDetector(
            onTap: () {
              selectCheckbox(false);
            },
            child: Container(
              width: size.width * 0.03,
              height: size.height * 0.03,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: _isChecked2 ? const Color(0xFF0B26BF) : const Color(0xFF7A81A6),
                ),
                color: _isChecked2 ? const Color(0xFF0B26BF) : Colors.transparent,
              ),
              child: _isChecked2
                  ? Center(
                      child: Container(
                        width: size.width * 0.03,
                        height: size.height * 0.03,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFF0B26BF),
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : null,
            ),
          ),
          const SizedBox(width: 14),
          const Text(
            'Женский',
            style: TextStyle(
              fontFamily: 'RobotoRegular',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF2F2F48),
            ),
          ),
        ],
      ),
    );
  }
}