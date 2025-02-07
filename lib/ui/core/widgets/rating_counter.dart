import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class RatingCounter extends StatelessWidget {
  final String count;

  const RatingCounter({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.current.reviews(int.parse(count)),
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
