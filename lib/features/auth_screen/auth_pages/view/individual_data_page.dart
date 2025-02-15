import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../router/router.dart';
import '../../buttons/view/view.dart';
import '../../items/view/view.dart';

@RoutePage()
class IndividualDataPage extends StatefulWidget {
  const IndividualDataPage({super.key});

  @override
  IndividualDataPageState createState() => IndividualDataPageState();
}

class IndividualDataPageState extends State<IndividualDataPage> with ChangeNotifier{
  bool isCheckboxChecked = false;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('hasDataIndividual', true);
    });
  }

  void updateCheckbox(bool? value) { // Now takes a nullable boolean
    setState(() {
      isCheckboxChecked = value ?? false; // Handle null case
    });
    notifyListeners();
  }

  @override
  void dispose(){
    dispose();
    super.dispose();
  }

  void _navigateToNextPage() {
    // Переход на следующий экран
    context.router.replace(const HomeRoute());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 36),
            SizedBox(
              width: size.width * 0.9125,
              child: const Text(
                'Личные данные',
                style: TextStyle(
                  fontFamily: 'RobotoRegular',
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Color(0xFF2F2F48),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(height: 34),
            Center(
              child: Column(
                children: [
                  const FeatureItem1(labelText: 'Ваша фамилия'),
                  SizedBox(height: size.height * 0.03),
                  const FeatureItem1(labelText: 'Ваше имя'),
                  SizedBox(height: size.height * 0.03),
                  const FeatureItem1(labelText: 'Ваше отчество'),
                  SizedBox(height: size.height * 0.03),
                  const FeatureItem1(labelText: 'user@mail.ru'),
                  SizedBox(height: size.height * 0.03),
                  const FeatureItem2(),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const FeatureItem4(),
            const SizedBox(height: 80),
            SizedBox(
              width: size.width * 0.925,
              child: 
              Row(
              children: [
                Checkbox(
                  activeColor: const Color(0xFF0B26BF),
                  value: isCheckboxChecked,
                  onChanged: updateCheckbox, // Pass the updated function
                ),
                const Text(
                  'Соглашаюсь получать рекламную информацию\nо программе, товарах, партнёрах, на указанный\nмной номер телефона в виде СМС',
                  style: TextStyle(
                    fontFamily: 'RobotoRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF7A81A6),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 24),
          SaveDataButton(individualDataPageState: this, onTap: _navigateToNextPage,),   
          ],
        ),
      ),
    );
  }
}