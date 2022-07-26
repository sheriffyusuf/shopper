import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shopper/pages/onboard_page/view/second_screen.dart';
import 'package:flutter_shopper/route/router.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
            child: Stack(
              children: [
                SvgPicture.asset(
                  "assets/images/background.svg",
                ),
                Center(
                  child: SizedBox(
                    width: context.width() / 1.5,
                    height: context.height() / 1,
                    child: SvgPicture.asset(
                      "assets/images/logo_text.svg",
                    ),
                  ), /* Assets.images.logo
                      .image(width: context.width() - 164), */
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
               
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.replaceRoute(const SecondRoute());
                      },
                      child: Container(
                          width: context.width() / 1.2,
                          height: 64,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              )),
                          child: const Center(
                            child: Text(
                              "Explore Us",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
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
