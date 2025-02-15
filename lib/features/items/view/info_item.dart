import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoItem extends StatelessWidget{

  const InfoItem ({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width * 0.9125,
          height: size.height * 0.2,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF0B26BF),
                offset: Offset(0.0, 2.0),
                blurRadius: 2.5,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 2.0),
                blurRadius: 5.0,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 16, top: 16),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.5,
                      height: 24,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Align(
                              alignment: Alignment.center,
                              child: SvgPicture.asset('assets/icons/svg/credit-card.svg', width: 20, height: 16,),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Счет компании',
                            style: TextStyle(
                              fontFamily: 'Roboto-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF2F2F48),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.3,
                      height: size.height * 0.1,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '№ счета',
                            style: TextStyle(
                              fontFamily: 'Roboto-Regular',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7A81A6)
                            ),
                          ),
                          Text(
                            '7677876898',
                            style: TextStyle(
                              fontFamily: 'Roboto-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF2F2F48)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.4,
                      height: size.height * 0.1,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Лимит компании',
                            style: TextStyle(
                              fontFamily: 'Roboto-Regular',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7A81A6)
                            ),
                          ),
                          Text(
                            '1 746 654 ₽',
                            style: TextStyle(
                              fontFamily: 'Roboto-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF2F2F48)
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      height: size.height * 0.1,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Баланс компании',
                            style: TextStyle(
                              fontFamily: 'Roboto-Regular',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7A81A6)
                            ),
                          ),
                          Text(
                            '942 865 ₽',
                            style: TextStyle(
                              fontFamily: 'Roboto-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF2F2F48)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}