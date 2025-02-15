import 'package:flutter/material.dart';

import 'news_story_widget.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget({super.key});

  final List<String> imagePaths = [
    'assets/images/news_1.png',
    'assets/images/news_2.png',
    'assets/images/news_3.png',
  ];

    final List<String> imagePaths_2 = [
    'assets/images/sale_1.png',
    'assets/images/sale_3.png',
    'assets/images/sale_2.png',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.9125,
              child: const Text(
                'Новости и акции',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xFF2F2F48),
                  fontSize: 18,
                  fontFamily: 'RobotoMedium',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              margin: const EdgeInsets.only(left: 8),
              child: SizedBox(
                height: size.height * 0.26,
                child: ListView.builder(
                  itemCount: imagePaths.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsStoryScreen(
                            imagePath: imagePaths_2[index],
                            initialPage: index,
                            imagePaths: imagePaths_2,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 8),
                      width: size.width * 0.37,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.white),
                          image: DecorationImage(
                            image: AssetImage(imagePaths[index]),
                            fit: BoxFit.fitWidth,
                            repeat: ImageRepeat.noRepeat,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
