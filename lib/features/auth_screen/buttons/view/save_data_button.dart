import 'package:flutter/material.dart';

import '../../auth_pages/view/view.dart';

class SaveDataButton extends StatefulWidget {
  final VoidCallback onTap;
  final IndividualDataPageState individualDataPageState;

  const SaveDataButton({super.key, required this.onTap, required this.individualDataPageState});

  @override
  SaveDataButtonState createState() => SaveDataButtonState();
}

class SaveDataButtonState extends State<SaveDataButton> {
  bool isCheckboxChecked = false;

  @override
  void initState() {
    super.initState();
    widget.individualDataPageState.addListener(updateCheckboxState); 
  }

  void updateCheckboxState() {
    setState(() {
      isCheckboxChecked = widget.individualDataPageState.isCheckboxChecked; 
    });
  }

  @override
  void dispose() {
    widget.individualDataPageState.removeListener(updateCheckboxState);
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9125,
      height: size.height * 0.065,
      decoration: BoxDecoration(
        color: isCheckboxChecked ? const Color(0xFF0B26BF) : Colors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isCheckboxChecked ? () {
            widget.onTap();
          }: null,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Сохранить',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 16, 
                  fontFamily: 'RobotoMedium', 
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}