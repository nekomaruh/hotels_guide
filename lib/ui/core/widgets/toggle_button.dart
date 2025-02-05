import 'package:flutter/material.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';

class ToggleButton extends StatefulWidget {
  final String text;
  final bool selected;
  final Function(bool value) onTap;

  const ToggleButton({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool _isSelected = false;

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSelection,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
        child: Chip(
          visualDensity: VisualDensity.compact,
          padding: EdgeInsets.symmetric(horizontal: 3),
          backgroundColor: _isSelected ? AppColors.primary : AppColors.white,
          side: BorderSide(
            color: _isSelected ? Colors.transparent : Colors.grey.shade300,
            width: 1,
          ),
          label: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: _isSelected ? Colors.white : Colors.grey.shade800,
                      fontWeight: FontWeight.w600,
                    ) ??
                TextStyle(),
            child: Text(widget.text),
          ),
        ),
      ),
    );
  }
}
