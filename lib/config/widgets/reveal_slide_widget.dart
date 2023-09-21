import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SlideRevealWidget extends StatelessWidget {
  final Widget child;
  final int? delay;
  const SlideRevealWidget({super.key, required this.child, this.delay});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      child: child
          .animate()
          .slideY(begin: 1, end: 0, delay: Duration(milliseconds: delay ?? 0)),
    );
  }
}
