import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../router/router.dart';
import '../../buttons/view/view.dart';
import '../../items/view/view.dart';

@RoutePage()
class IndividualAuthPage extends StatefulWidget {
  const IndividualAuthPage({super.key});

  @override
  State<IndividualAuthPage> createState() => IndividualAuthPageState();
}

class IndividualAuthPageState extends State<IndividualAuthPage> {
  final ValueNotifier<bool> _isButtonEnabled = ValueNotifier(false);
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateButtonState);
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('hasAuthIndividual', true);
    });
  }
  

  @override
  void dispose() {
    _controller.removeListener(_updateButtonState);
    _controller.dispose();
    _isButtonEnabled.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    _isButtonEnabled.value = _controller.text.length == 10;
  }

  void _navigateToNextPage() {
    // Переход на следующий экран
    context.router.replace(IndividualCodeRoute(phoneNumber: _controller.text));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.08),
              Center(
                child: SvgPicture.asset(
                  'assets/images/svg/nafta_main_logo.svg',
                  width: size.width * 0.72, // 60% от ширины экрана
                ),
              ),
              SizedBox(height: size.height * 0.06),
              const Text(
                'ВХОД\nДЛЯ ФИЗИЧЕСКИХ ЛИЦ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'RobotoMedium',
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  color: Color(0xFF2F2F48),
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: size.height * 0.06),
              FeatureItem3(controller: _controller),
              SizedBox(height: size.height * 0.02),
              SizedBox(
                width: size.width * 0.9125,
                height: size.height * 0.065,
                child: const Text(
                  'Введите ваш номер мобильного телефона.\nНа него придет СМС с кодом подтверждения',
                  style: TextStyle(
                    fontFamily: 'RobotoRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF7A81A6),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              ValueListenableBuilder<bool>(
                valueListenable: _isButtonEnabled,
                builder: (context, isEnabled, child) {
                  return GetCodeButton(
                    isEnabled: isEnabled,
                    phoneNumber: _controller.text,
                    onTap: _navigateToNextPage,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
