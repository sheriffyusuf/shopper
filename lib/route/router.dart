import 'package:auto_route/auto_route.dart';
import 'package:flutter_shopper/pages/splash/splash_screen.dart';

@AdaptiveAutoRouter(
    replaceInRouteName: 'Page|Screen,Route',
    routes: <AutoRoute>[
      AutoRoute(
        page: SplashScreen,
        path: '/splash',
        initial: true,
      ),

    
    ])
class $RootRouter {}

