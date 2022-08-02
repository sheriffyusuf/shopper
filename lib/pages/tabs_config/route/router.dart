import 'package:auto_route/auto_route.dart';
import 'package:flutter_shopper/pages/change_password/bloc/change_password_form_bloc.dart';
import 'package:flutter_shopper/pages/change_password/views/confirm_password_screen.dart';
import 'package:flutter_shopper/pages/forgot_password/views/forgot_screen.dart';
import 'package:flutter_shopper/pages/login/view/login_screen.dart';
import 'package:flutter_shopper/pages/main_pages/chart/views/chart_screen.dart';
import 'package:flutter_shopper/pages/main_pages/home/views/home_screen.dart';
import 'package:flutter_shopper/pages/main_pages/more/views/more_screen.dart';
import 'package:flutter_shopper/pages/main_pages/profile/views/profile_screen.dart';
import 'package:flutter_shopper/pages/main_pages/search/views/search_screen.dart';
import 'package:flutter_shopper/pages/onboard_page/view/first_screen.dart';
import 'package:flutter_shopper/pages/onboard_page/view/forth_screen.dart';
import 'package:flutter_shopper/pages/onboard_page/view/second_screen.dart';
import 'package:flutter_shopper/pages/onboard_page/view/third_screen.dart';
import 'package:flutter_shopper/pages/signin/views/signin_screen.dart';
import 'package:flutter_shopper/pages/splash/splash_screen.dart';
import 'package:flutter_shopper/pages/tabs_config/tab_controller.dart';
import 'package:flutter_shopper/pages/verify_pin/views/verify_screen.dart';
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
      AutoRoute(
        page: ForgotPasswordScreen,
        path: '/forgot',
      ),
      AutoRoute(
        page: VerifyScreen,
        path: '/verify',
      ),
      AutoRoute(
        page: ConfirmPasswordScreen,
        path: '/confirm_password',
      ),
      AutoRoute<String>(path: '/dashboard', page: TabScreen,
          // guards: [AuthGuard],
          children: [
           AutoRoute(
              path: 'Home',
              page: EmptyRouterPage,
              name: 'HomeTab',
              children: [
                AutoRoute(
                  path: '',
                  page: HomeScreen,
                ),
              ],
            ),
            AutoRoute(
              page: SearchScreen,
              name: 'SearchTap',
              path: 'search',
            ),
            AutoRoute(
              page: ChartScreen,
              name:'ChartTab',
              path: 'chart',
            ),
            AutoRoute(
              page: MoreScreen,
              name: 'MoreTab',
              path: 'more',
            ),
            AutoRoute(
              page: ProfileScreen,
              name: 'ProfileTab',
              path: 'profile',
            ),
          ]),
  
  
    ])


class $RootRouter {}
