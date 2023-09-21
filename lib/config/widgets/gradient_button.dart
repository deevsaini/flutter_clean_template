import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

import '../responsive/responsive_widget.dart';
import '../theme/text_theme.dart';
import '../utils/constants.dart';
import '../utils/dimensions.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final List<Color>? colors;
  final double? cornerRadius;
  const GradientButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.colors,
      this.cornerRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: ResponsiveWidget.isMobile(context)
          ? null
          : const BoxConstraints(maxWidth: 200),
      width: Dimensions.screenWidth,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors ?? [Colors.black, Colors.black],
          ),
          borderRadius: SmoothBorderRadius(
              cornerRadius: cornerRadius ?? Dimensions.height2 * 6,
              cornerSmoothing: 1)),
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius(
                    cornerRadius: Dimensions.height2 * 6, cornerSmoothing: 1)),
            textStyle: CustomStyles.buttonTextStyle
                .copyWith(color: Constants.blackColor)),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
