import 'package:flutter/material.dart';
import 'dart:async'; // Import for Timer

class ResendCodeButton extends StatefulWidget {
  final VoidCallback onTap;

  const ResendCodeButton({super.key, required this.onTap});

  @override
  State<ResendCodeButton> createState() => _ResendCodeButtonState();
}

class _ResendCodeButtonState extends State<ResendCodeButton> {
  bool _isButtonEnabled = false;
  int _secondsRemaining = 60; // Start with 60 seconds
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel timer when widget is disposed
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _isButtonEnabled = true;
          _timer?.cancel(); // Stop the timer
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9125,
      height: size.height * 0.065,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        border: Border.all(
            width: 1,
            color: _isButtonEnabled ? const Color(0xFF0B26BF) : const Color(0xFFC5C8D4)),
        color: _isButtonEnabled
            ? const Color(0xFF0B26BF)
            : const Color(0xFFC5C8D4),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: _isButtonEnabled
              ? () {
                  // Handle button tap logic here
                  // Reset the button state and timer
                  setState(() {
                    _isButtonEnabled = false;
                    _secondsRemaining = 60; // Reset timer
                    _startTimer(); // Start the timer again
                  });
                }
              : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                _isButtonEnabled
                    ? 'Прислать код повторно'
                    : 'Повторить запрос возможно через $_secondsRemaining',
                style: TextStyle(
                    color: _isButtonEnabled
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontFamily: 'RobotoMedium',
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}