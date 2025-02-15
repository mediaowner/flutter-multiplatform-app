// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:intl/intl.dart';

class FeatureItem2 extends StatefulWidget {
  const FeatureItem2({super.key});

  @override
  FeatureItem2State createState() => FeatureItem2State();
}

class FeatureItem2State extends State<FeatureItem2> {
  DateTime _selectedDate = DateTime.now();
  bool _isDateSelected = false;

  // Async function to handle await expression
  Future<void> showDateDialog(BuildContext context) async {
    // Calculate the minDate as 18 years ago from the current date
    DateTime maxDate = DateTime.now().subtract(const Duration(days: 18 * 365));
    DateTime minDate = DateTime.now().subtract(const Duration(days: 99 * 365));

    final size = MediaQuery.of(context).size;
    final date = await showDatePickerDialog(
      context: context,
      minDate: minDate,
      maxDate: maxDate,
      centerLeadingDate: true,
      height: size.height * 0.4,
      slidersColor: Colors.black,
      highlightColor: Colors.white,
      splashColor: Colors.white,
      initialPickerType: PickerType.days,
      selectedCellDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100.0),
        ),
        color: Color(0xFF0B26BF),
      ),
      leadingDateTextStyle: const TextStyle(
        fontFamily: 'RobotoMedium',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Colors.black,
      ),
      daysOfTheWeekTextStyle: const TextStyle(
        fontFamily: 'RobotoMedium',
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: Colors.black,
      ),
    );
    if (date != null) {
      setState(() {
        _selectedDate = date;
        _isDateSelected = true;
      });
    }
  }

  // Function to format the date
  String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('dd.MM.yyyy');
    return formatter.format(date);
  }

  // Define the text styles
  final TextStyle unselectedStyle = const TextStyle(
    fontFamily: 'RobotoRegular',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Color(0xFF7A81A6),
  );

  final TextStyle selectedStyle = const TextStyle(
    fontFamily: 'RobotoRegular',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Color(0xFF2F2F48),
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9125,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
        border: Border.all(width: 1, color: const Color(0xFFC5C8D4)),
      ),
      child: TextButton(
        onPressed: () {
          showDateDialog(context); // Call the async function here
        },
        child: Container(
          width: size.width * 0.9125,
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            _isDateSelected == false
              ? 'Выберите дату рождения'
              : formatDate(_selectedDate),
            style: _isDateSelected ? selectedStyle : unselectedStyle,
          ),
        ),
      ),
    );
  }
}