// ignore_for_file: use_build_context_synchronously

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import '../../constants/view/view.dart';
import '../../text_style/view/view.dart';

class TurnOnNotificationsButton extends StatelessWidget {
  final VoidCallback onTap;

  const TurnOnNotificationsButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.91,
      height: size.height * 0.065,
      decoration: const BoxDecoration(
        color: OnBoardingColors.buttonColor,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () async {
            bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
            if (!isAllowed) {
              // Если уведомления не разрешены, запрашиваем разрешение
              bool allowed = await AwesomeNotifications().requestPermissionToSendNotifications();
              if (allowed) {
                onTap();
              }
            } else {
              onTap();
            }
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Включить уведомления',
                style: ButtonTextStyles.buttontext
              ),
            ],
          ),
        ),
      ),
    );
  }
}