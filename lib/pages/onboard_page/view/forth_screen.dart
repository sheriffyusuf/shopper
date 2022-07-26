import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shopper/route/router.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,

        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
          body: Column(
        children: [
          20.height,
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  30.height,
                  const Text(
                    'Create your own store ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  16.height,
                  const Padding(
                    padding: EdgeInsets.only(left: 68.0, right: 68.0),
                    child: Text(
                      'Make it your own. As you\'re setting up your online store, you have the ability to customize your retail store online to start selling products.',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  // 10.height,
                  SizedBox(
                    width: context.width() / 1,
                    height: context.height() / 1.8,
                    child: SvgPicture.asset(
                      "assets/images/fourth_image.svg",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              width: context.width(),
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.replaceRoute(const WelcomeRoute());
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: context.width() / 2.7,
                          height: 64,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              )),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, //Center Row contents horizontally,
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, //Center Row contents vertically,
                              children: const [
                                Text(
                                  "Next",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                Icon(
                                  PhosphorIcons.arrowRightLight,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )),
                    ),
                    15.height,
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
