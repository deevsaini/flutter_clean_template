import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'dimensions.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}

Widget buttonLoading({bool? dark}) {
  return SizedBox(
    width: Dimensions.width5 * 6,
    height: Dimensions.height5 * 6,
    child: Center(
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color>(
            dark == true ? Constants.blackColor : Colors.white),
      ),
    ),
  );
}

launchURL(String url, {bool? inApp}) async {
  Uri uri = Uri.parse("");
  Logger logger = Logger();
  if (url.startsWith("https://") ||
      url.startsWith("http://") ||
      url.startsWith("tel:") ||
      url.startsWith("sms:") ||
      url.startsWith("wa:") ||
      url.startsWith("tg:") ||
      url.startsWith("mailto:") ||
      url.startsWith("whatsapp")) {
    uri = Uri.parse(url);
  } else {
    uri = Uri.parse("https://$url");
  }
  if (await canLaunchUrl(uri)) {
    logger.i("launched $uri");

    if (inApp == null) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      await launchUrl(uri,
          mode: LaunchMode.inAppWebView, webOnlyWindowName: "Digrowfa");
    }
  } else {
    logger.e("cant launch $uri");
  }
}
