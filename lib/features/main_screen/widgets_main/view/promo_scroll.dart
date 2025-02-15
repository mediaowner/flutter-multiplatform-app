import 'package:flutter/material.dart';
import 'package:nafta24/features/main_screen/widgets_main/view/promo_story_widget.dart';

class PromoScroll extends StatelessWidget{
  PromoScroll({super.key});

  final List<String> imagePaths = [
    'assets/images/promo_1.png',
    'assets/images/promo_2.png',
    'assets/images/promo_3.png',
    'assets/images/promo_4.png',
  ];

    final List<String> imagePaths_2 = [
    'assets/images/sale_1.png',
    'assets/images/sale_1.png',
    'assets/images/sale_1.png',
    'assets/images/sale_1.png',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(child: 
      Container(
        margin: const EdgeInsets.only(left: 8), 
        child: SizedBox(height: size.height * 0.14,
        child: ListView.builder(
          itemCount: imagePaths.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PromoStoryScreen(
                    imagePath: imagePaths_2[index],
                    initialPage: index,
                    imagePaths: imagePaths_2,
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(left: 8),
              width: size.width * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: const Color(0xFF0B26BF))
              ),
              child: Container(
                width: size.width * 0.14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.white),
                  image:
                    DecorationImage(image: AssetImage(imagePaths[index]),
                    fit: BoxFit.fill,
                    repeat: ImageRepeat.noRepeat)
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}