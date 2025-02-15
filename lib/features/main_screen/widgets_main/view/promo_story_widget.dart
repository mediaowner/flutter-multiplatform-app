import 'dart:async';
import 'package:flutter/material.dart';

class PromoStoryScreen extends StatefulWidget {
  final String imagePath;
  final int initialPage;
  final List<String> imagePaths;

  const PromoStoryScreen({
    super.key,
    required this.imagePath,
    required this.initialPage,
    required this.imagePaths,
  });

  @override
  _PromoStoryScreenState createState() => _PromoStoryScreenState();
}

class _PromoStoryScreenState extends State<PromoStoryScreen> {
  late PageController _pageController;
  Timer? _timer;
  int _currentIndex = 0;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialPage);
    _currentIndex = widget.initialPage;
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    _progress = 0.0;
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        _progress += 0.01;
      });

      if (_progress >= 1.0) {
        if (_currentIndex < widget.imagePaths.length - 1) {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          Navigator.pop(context);
        }
        _startTimer();
      }
    });
  }

  void _resetTimer() {
    _timer?.cancel();
    _startTimer();
  }

  void _handleTap() {
    if (_currentIndex < widget.imagePaths.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      _startTimer();
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _handleTap,
        child: Stack(
          children: [
            PageView.builder(
              // physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemCount: widget.imagePaths.length,
              itemBuilder: (context, index) => Image.asset(
                widget.imagePaths[index],
                fit: BoxFit.fill,
              ),
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                  _resetTimer();
                });
              },
            ),
            Positioned(
              top: 40,
              left: 20,
              right: 20,
              child: Row(
                children: List.generate(widget.imagePaths.length, (index) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: LinearProgressIndicator(
                        value: index == _currentIndex ? _progress : (index < _currentIndex ? 1.0 : 0.0),
                        backgroundColor: Colors.white54,
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              top: 60,
              right: 24,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.close,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
