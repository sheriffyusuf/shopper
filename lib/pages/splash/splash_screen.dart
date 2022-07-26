import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_shopper/gen/assets.gen.dart';
import 'package:flutter_shopper/pages/onboard_page/view/first_screen.dart';
import 'package:flutter_shopper/route/router.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _afterSplash() async {
      context.replaceRoute(const FirstRoute());
      //await 1.seconds.delay;
     /*  bool isLoggedIn = getBoolAsync(kHasAccount, defaultValue: false);
      if (isLoggedIn) {
        
      context.replaceRoute(TabRoute());
    
      } else {
        context.replaceRoute(WelcomeRoute());
      } */
    }

    useEffect(() {
      _afterSplash();
    });
    return Scaffold(
        body: Center(
      child:SvgPicture.asset(
          "assets/images/logo.svg",
          height: context.height() * 0.25,
        ), /* Assets.images.logo
          .image(width: context.width() - 164), */
    ));
  }
}
