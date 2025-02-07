import 'package:flutter/material.dart';

class AnimateWidget extends StatelessWidget {
  final Widget child;
  const AnimateWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      child: child,
    );
  }
}
