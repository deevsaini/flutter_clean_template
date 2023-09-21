import 'package:flutter/material.dart';

const int tablet = 1000;
const int mobile = 600;

// const Breakpoint(start: 0, end: 450, name: MOBILE),
// const Breakpoint(start: 451, end: 800, name: TABLET),
// const Breakpoint(start: 801, end: 1920, name: DESKTOP),
// const Breakpoint(start: 1921, end: double.infinity, name: '4K'),

class ResponsiveWidget extends StatelessWidget {
  final Widget? desktopLayout;
  final Widget? tabletLayout;
  final Widget mobileLayout;
  const ResponsiveWidget({
    super.key,
    this.desktopLayout,
    this.tabletLayout,
    required this.mobileLayout,
  });
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width > 0 &&
      MediaQuery.of(context).size.width <= mobile;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > mobile &&
      MediaQuery.of(context).size.width <= tablet;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > tablet;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (isDesktop(context)) {
        return Center(child: desktopLayout ?? mobileLayout);
      } else if (isTablet(context)) {
        return Center(child: tabletLayout ?? mobileLayout);
      } else {
        return Center(child: mobileLayout);
      }
    });
  }
}
