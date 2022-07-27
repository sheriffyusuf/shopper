import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart' as l;
import 'package:flutter_shopper/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';

void showLoader(BuildContext context) {
  l.Loader.show(context,
      progressIndicator: Loader(
        valueColor: AlwaysStoppedAnimation(kAppColor),
      ).visible(true),
      overlayColor: Colors.grey.withOpacity(0.5));
}

void hideLoader() {
  l.Loader.hide();
}
