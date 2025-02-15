import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class WashItem extends StatelessWidget {
  // final String icon;
  // final String text;

  const WashItem({super.key,});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: size.width * 0.9125,
      height: size.height * 0.18,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
       borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF0B26BF),
            offset: Offset(0.0, 2.0),
            blurRadius: 5.0,
            spreadRadius: 0.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 2.0),
            blurRadius: 10.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16,),
              Text(
                'Автомойка №12',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2F2F48),
                  fontFamily: 'RobotoMedium',
                ),
              ),
              SizedBox(height: 4,),
              Text(
                'Адрес: город Название, ул.\nНазвание, д. 131',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7A81A6),
                  fontFamily: 'RobotoRegular',
                ),
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  SvgPicture(SvgAssetLoader('assets/icons/svg/wc.svg')),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 16,),
              SvgPicture(SvgAssetLoader('assets/icons/svg/geo.svg')),
              Text(
                '8,5 км',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7A81A6),
                  fontFamily: 'RobotoRegular',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
