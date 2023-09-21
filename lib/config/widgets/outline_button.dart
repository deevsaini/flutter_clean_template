import 'package:bettingaviator/config/utils/constants.dart';
import 'package:bettingaviator/config/utils/dimensions.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  const SecondaryButton(
      {super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenWidth,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: SmoothBorderRadius(
              cornerRadius: Dimensions.height2 * 6, cornerSmoothing: 1)),
      height: 60,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius(
                    cornerRadius: Dimensions.height2 * 6, cornerSmoothing: 1)),
            side: const BorderSide(color: Constants.primaryColor, width: 2)),
        child: child,
      ),
    );
  }
}
