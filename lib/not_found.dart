import 'package:cleantemplate/config/utils/assets.dart';
import 'package:cleantemplate/config/utils/dimensions.dart';
import 'package:flutter/material.dart';

import 'config/responsive/responsive_widget.dart';
import 'config/theme/text_theme.dart';
import 'config/utils/constants.dart';
import 'config/utils/helpers.dart';
import 'config/widgets/gradient_button.dart';
import 'config/widgets/reveal_slide_widget.dart';

class NotFoundPage extends StatelessWidget {
  static const String routeName = "not-found";
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: const ResponsiveWidget(
        mobileLayout: NotFoundMobile(),
        tabletLayout: NotFoundMobile(),
        desktopLayout: NotFoundMobile(),
      ),
    );
  }
}

class NotFoundMobile extends StatefulWidget {
  const NotFoundMobile({
    super.key,
  });

  @override
  State<NotFoundMobile> createState() => _NotFoundMobileState();
}

class _NotFoundMobileState extends State<NotFoundMobile> {
  late Image gif;
  @override
  void initState() {
    gif = Image.asset(Assets.routeGif);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(gif.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.screenHeight,
      width: Dimensions.screenWidth,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Constants.primaryColorAccent, Constants.primaryColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (ResponsiveWidget.isMobile(context))
            SizedBox(
              width: Dimensions.screenWidth,
              height: Dimensions.screenHeight * 0.4,
              child: FittedBox(fit: BoxFit.cover, child: gif),
            ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width3 * 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SlideRevealWidget(
                      child: Text("OOPS!",
                          style: CustomStyles.largeHeadingTextStyle)),
                  addVerticalSpace(8),
                  SlideRevealWidget(
                    delay: 100,
                    child: Text("You May Have Lost Your Path..",
                        style: CustomStyles.titleTextStyle),
                  ),
                  addVerticalSpace(4),
                  SlideRevealWidget(
                    delay: 150,
                    child: Text("click the button below to go back home",
                        style: CustomStyles.smallTitleTextStyle),
                  ),
                  addVerticalSpace(Dimensions.height5 * 10),
                  SlideRevealWidget(
                    delay: 300,
                    child: GradientButton(
                        cornerRadius: Dimensions.height5 * 10,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Go Home",
                                style: CustomStyles.buttonTextStyle),
                            addHorizontalSpace(10),
                            const Icon(
                              Icons.arrow_right_alt,
                            )
                          ],
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
