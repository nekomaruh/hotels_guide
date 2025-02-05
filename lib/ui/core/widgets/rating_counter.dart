import 'package:flutter/material.dart';

class RatingCounter extends StatelessWidget {
  final String count;

  const RatingCounter({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$count avaliacoes',
          style: Theme.of(context)
              .textTheme
              .labelLarge,
        ),
        SizedBox(width: 3),
        Icon(Icons.keyboard_arrow_down_rounded, size: 12)
      ],
    );
  }
}
