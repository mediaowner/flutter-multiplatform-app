import 'package:flutter/material.dart';


import '../../items/items.dart';
import '../../styles/styles.dart';

class FilterButton extends StatefulWidget {
  final String text;
  final bool isSelected;
  final ValueChanged<bool> onSelected;

  const FilterButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: widget.text == 'АЗС станции' ? size.width * 0.24 : size.width * 0.22,
      height: 28,
      decoration: BoxDecoration(
        color: widget.isSelected ? const Color(0xFF0B26BF) : const Color(0xFFE9EBF8),
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => widget.onSelected(!widget.isSelected),
          child: Center(
            child: Text(
              widget.text,
              style: widget.isSelected
                  ? ActiveButtonTextStyles.buttontext
                  : InActiveButtonTextStyles.buttontext,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonGroup extends StatefulWidget {
  const ButtonGroup({super.key,});

  @override
  State<ButtonGroup> createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  bool _isGasStationSelected = true;
  bool _isCarWashSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            FilterButton(
              text: 'АЗС станции',
              isSelected: _isGasStationSelected,
              onSelected: (isSelected) {
                setState(() {
                  _isGasStationSelected = isSelected;
                  if (isSelected) {
                    _isCarWashSelected = false;
                  }
                });
              },
            ),
            const SizedBox(width: 8),
            FilterButton(
              text: 'Автомойки',
              isSelected: _isCarWashSelected,
              onSelected: (isSelected) {
                setState(() {
                  _isCarWashSelected = isSelected;
                  if (isSelected) {
                    _isGasStationSelected = false;
                  }
                });
              },
            ),
          ],
        ),
        if (_isGasStationSelected)
          const GasItem(),
        if (_isCarWashSelected)
          const WashItem(),        
      ],
    );
  }
}