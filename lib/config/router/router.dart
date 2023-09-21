// ignore_for_file: unused_local_variable

import 'package:animations/animations.dart';
import 'package:bettingaviator/not_found.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final args = settings.arguments;

  Route<T> fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
      {int duration = 300}) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeScaleTransition(animation: animation, child: child);
      },
    );
  }

  Route<dynamic> router(Widget w) {
    return fadeThrough(settings, (context) => w);
  }

  switch (settings.name) {
    default:
      return router(const NotFoundPage());
  }
}
