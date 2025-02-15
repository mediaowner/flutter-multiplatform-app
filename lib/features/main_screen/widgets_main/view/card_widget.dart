import 'package:flutter/material.dart';

import '../../items/items.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
     builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 1.0,
          minChildSize: 0.75,
          maxChildSize: 1.0,
          expand: false,
          builder: (context, scrollController) {
            return CustomScrollView(
              controller: scrollController,
              slivers: const [
                CardItem(),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () => _showBottomSheet(context),
          child: Container(
            width: size.width * 0.9125,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFFDA251D),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  width: size.width * 0.22,
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    image: const DecorationImage(image: AssetImage('assets/images/qr.png'), fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '0 Б',
                        style: TextStyle(
                          fontFamily: 'RobotoRegular',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'GOLD',
                        style: TextStyle(
                          fontFamily: 'RobotoMedium',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '+2 бонуса за каждые 100₽',
                        style: TextStyle(
                          fontFamily: 'RobotoRegular',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 70, left: 0),
                      height: size.height * 0.01,
                      width: size.width * 0.01,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xFF0BBF12),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 70, left: 4),
                      child: const Text(
                        '№ 32750893',
                        style: TextStyle(
                          fontFamily: 'RobotoRegular',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}