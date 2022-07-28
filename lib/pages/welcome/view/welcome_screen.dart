import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shopper/gen_widget/app_button.dart';
import 'package:flutter_shopper/gen_widget/app_outlined_button.dart';
import 'package:flutter_shopper/route/router.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart' hide AppButton;

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: context.width(),
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: context.width() / 1.2,
                    height: context.height() / 2.6,
                    child: SvgPicture.asset(
                      "assets/images/welcome.svg",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: context.width(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 90,
                              height: 90,
                              child: SvgPicture.asset(
                                "assets/images/logo.svg",
                              ),
                            ),
                            SizedBox(
                              width: context.width() / 2,
                              height: context.height() / 8,
                              child: SvgPicture.asset(
                                "assets/images/welcome_text.svg",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: context.width(),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Make it your own. As you\'re setting up your\nonline store, you have the ability to customize.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              10.height,
              const Spacer(),
              AppButton(
                title: 'Login',
                onPressed: () => context.replaceRoute(const LoginRoute()),
              ),
              24.height,
              AppOutlinedButton(
                title: 'Sign up',
                onPressed: () => context.replaceRoute(const SignInRoute()),
              ),
              10.height
            ],
          ),
        ),
      ),
    );
  }
}
