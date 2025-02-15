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
            height: size.height * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFFDA251D),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 4, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'GOLD',
                        style: TextStyle(
                          fontFamily: 'RobotoMedium',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 4,),
                      Container(
                        // margin: const EdgeInsets.only(left: 8),
                        width: size.width * 0.22,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                          image: const DecorationImage(image: AssetImage('assets/images/qr.png'), fit: BoxFit.fill)
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 80, right: 0),
                      height: size.height * 0.006,
                      width: size.width * 0.01,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 80, right: 16),
                      child: const Text(
                        'Список карт',
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