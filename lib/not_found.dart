import 'package:bettingaviator/config/responsive/responsive_widget.dart';
import 'package:bettingaviator/config/theme/text_theme.dart';
import 'package:bettingaviator/config/utils/assets.dart';
import 'package:bettingaviator/config/utils/constants.dart';
import 'package:bettingaviator/config/utils/dimensions.dart';
import 'package:bettingaviator/config/utils/helpers.dart';
import 'package:bettingaviator/config/widgets/gradient_button.dart';
import 'package:bettingaviator/config/widgets/reveal_slide_widget.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
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
    gif = Image.asset(Assets.route);
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
                          style: CustomStyles.largeHeadingTextStyle
                              .copyWith(color: Colors.black))),
                  addVerticalSpace(8),
                  SlideRevealWidget(
                    delay: 100,
                    child: Text("You May Have Lost Your Path..",
                        style: CustomStyles.titleTextStyle
                            .copyWith(color: Colors.black)),
                  ),
                  addVerticalSpace(4),
                  SlideRevealWidget(
                    delay: 150,
                    child: Text("click the button below to go back home",
                        style: CustomStyles.smallTitleTextStyle
                            .copyWith(color: Colors.black)),
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
                            Text(
                              "Go Home",
                              style: CustomStyles.buttonTextStyle
                                  .copyWith(color: Constants.primaryColor),
                            ),
                            addHorizontalSpace(10),
                            const Icon(
                              Icons.arrow_right_alt,
                              color: Constants.primaryColor,
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
