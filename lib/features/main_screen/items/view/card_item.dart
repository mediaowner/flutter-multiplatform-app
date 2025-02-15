import 'package:flutter/material.dart';

import '../../buttons/buttons.dart';
import '../items.dart';

class CardItem extends StatelessWidget{
  const CardItem({super.key,});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: Container( 
          padding: const EdgeInsets.all(16.0),
          width: size.width * 1.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            GestureDetector(
              onVerticalDragUpdate: (details) {
                if (details.primaryDelta! > 20) {
                  Navigator.of(context).pop();
                }
              },
              child: Container(
                width: 32,
                height: 4,
                decoration: const BoxDecoration(
                  color: Color(0xFFE5E9FF),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
              ),
            ),
              const SizedBox(height: 26),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Бонусная карта',
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFF2F2F48)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 34),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 362,
                    width: size.width * 0.9125,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE5E9FF),
                      borderRadius: BorderRadius.all(Radius.circular(16))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 288,
                          width: size.width*0.8,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            image: DecorationImage(image: AssetImage('assets/images/qr_2.png'), fit: BoxFit.fill)
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          '3856471097-7474-8676',
                          style: TextStyle(
                            fontFamily: 'RobotoRegular',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF2F2F48),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const UpdateCodeButton(),
              const SizedBox(height: 16),
              const BanCardButton(),
              const SizedBox(height: 16),
              const AddCardButton(),
              const SizedBox(height: 48,),
              const QrItem(text: 'История операций'),
              const SizedBox(height: 8,),
              const QrItem(text: 'Пригласить друга')
            ],
          ),
        )
      ),
    );
  }
}