import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';

import '../../../../generated/l10n.dart';

class SlidingButton extends StatefulWidget {
  final int value;
  final Function(int value) onChanged;

  const SlidingButton({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  _SlidingButtonState createState() => _SlidingButtonState();
}

class _SlidingButtonState extends State<SlidingButton> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.value;
  }

  Widget _buildText(int i, String text, IconData icon, TextStyle? textStyle) {
    final color = _currentValue == i ? AppColors.black : AppColors.white;
    final iconColor = _currentValue == i ? AppColors.primary : AppColors.white;

    return AnimatedDefaultTextStyle(
      duration: Duration(milliseconds: 300),
      style: textStyle?.copyWith(color: color) ?? TextStyle(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: Icon(
              icon,
              key: ValueKey<int>(_currentValue),
              color: iconColor,
              size: 18,
            ),
          ),
          SizedBox(width: 5),
          Flexible(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
          ),
          SizedBox(width: 5)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(fontWeight: FontWeight.w600);

    final children = {
      1: _buildText(1, S.current.goNow, MdiIcons.flash, textStyle),
      2: _buildText(2, S.current.goLater, MdiIcons.calendar, textStyle),
    };

    return Center(
      child: FittedBox(
        child: CustomSlidingSegmentedControl<int>(
          customSegmentSettings: CustomSegmentSettings(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          initialValue: widget.value,
          children: children,
          decoration: BoxDecoration(
            color: AppColors.primaryDark,
            borderRadius: BorderRadius.circular(20),
          ),
          thumbDecoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          innerPadding: EdgeInsets.zero,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
          onValueChanged: (value) {
            if (_currentValue != value) {
              setState(() {
                _currentValue = value;
              });
              widget.onChanged(value);
            }
          },
        ),
      ),
    );
  }
}
