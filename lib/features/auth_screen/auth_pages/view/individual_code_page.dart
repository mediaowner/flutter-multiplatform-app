import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../router/router.dart';
import '../../buttons/view/view.dart';
import '../../items/view/view.dart';

@RoutePage()
class IndividualCodePage extends StatefulWidget {
  final String phoneNumber;

  const IndividualCodePage({super.key, required this.phoneNumber});

  @override
  State<IndividualCodePage> createState() => IndividualCodePageState();
}

class IndividualCodePageState extends State<IndividualCodePage> {
  final List<TextEditingController> _controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );
  final List<FocusNode> _focusNodes = List.generate(
    6,
    (index) => FocusNode(),
  );

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    for (final controller in _controllers) {
      controller.addListener(_updateButtonState);
    }
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('hasCodeIndividual', true);
    });
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.removeListener(_updateButtonState);
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _controllers.every((controller) => controller.text.isNotEmpty);
    });
  }

  void _navigateToNextPage() {
    // Переход на следующий экран
    context.router.replace(const IndividualDataRoute());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.1),
            const Center(
              child: Text(
                'Подтверждение номера',
                style: TextStyle(
                  fontFamily: 'RobotoMedium',
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                  color: Color(0xFF2F2F48),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Align items to the center
              children: List.generate(
                6,
                (index) {
                  if (index == 5) {
                    return FeatureItem5(
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      index: index,
                      nextFocusNode: null,
                    );
                  } else {
                    return Row(
                      children: [
                        FeatureItem5(
                          controller: _controllers[index],
                          focusNode: _focusNodes[index],
                          index: index,
                          nextFocusNode: _focusNodes[index + 1],
                        ),
                        const SizedBox(width: 24), // Add spacing here
                      ],
                    );
                  }
                },
              ),
            ),
            SizedBox(height: size.height * 0.04),
            const Text(
              'Код отправлен на номер',
              style: TextStyle(
                fontFamily: 'RobotoRegular',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF7A81A6),
              ),
            ),
            SizedBox(height: size.height * 0.005),
            Text(
              '+7${widget.phoneNumber}',
              style: const TextStyle(
                fontFamily: 'RobotoRegular',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF7A81A6),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            ConfirmCodeButton(onTap: _navigateToNextPage, isEnabled: _isButtonEnabled),
            SizedBox(height: size.height * 0.04),
            const Text(
              'Не получили код по СМС?',
              style: TextStyle(
                fontFamily: 'RobotoRegular',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF7A81A6),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            ResendCodeButton(onTap: _navigateToNextPage),
          ],
        ),
      ),
    );
  }
}
