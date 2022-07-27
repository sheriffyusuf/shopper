import 'package:auto_route/auto_route.dart';
import 'package:flutter_shopper/pages/login/view/login_screen.dart';
import 'package:flutter_shopper/pages/onboard_page/view/first_screen.dart';
import 'package:flutter_shopper/pages/onboard_page/view/forth_screen.dart';
import 'package:flutter_shopper/pages/onboard_page/view/second_screen.dart';
import 'package:flutter_shopper/pages/onboard_page/view/third_screen.dart';
import 'package:flutter_shopper/pages/signin/views/signin_screen.dart';
import 'package:flutter_shopper/pages/splash/splash_screen.dart';
import 'package:flutter_shopper/pages/welcome/view/welcome_screen.dart';

@AdaptiveAutoRouter(
    replaceInRouteName: 'Page|Screen,Route',
    routes: <AutoRoute>[
      AutoRoute(
        page: SplashScreen,
        path: '/splash',
        initial: true,
      ),
      AutoRoute(
        page: FirstScreen,
        path: '/first',
      ),
      AutoRoute(
        page: SecondScreen,
        path: '/second',
      ),
      AutoRoute(
        page: ThirdScreen,
        path: '/third',
      ),
      AutoRoute(
        page: ForthScreen,
        path: '/third',
      ),
      AutoRoute(
        page: WelcomeScreen,
        path: '/welcome',
      ),
      AutoRoute(
        page: LoginScreen,
        path: '/login',
      ),
      AutoRoute(
        page: SignInScreen,
        path: '/signin',
      ),
    ])
class $RootRouter {}
