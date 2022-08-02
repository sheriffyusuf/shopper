// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i19;
import 'package:flutter_shopper/pages/change_password/views/confirm_password_screen.dart'
    as _i11;
import 'package:flutter_shopper/pages/forgot_password/views/forgot_screen.dart'
    as _i9;
import 'package:flutter_shopper/pages/login/view/login_screen.dart' as _i7;
import 'package:flutter_shopper/pages/main_pages/chart/views/chart_screen.dart'
    as _i15;
import 'package:flutter_shopper/pages/main_pages/home/views/home_screen.dart'
    as _i18;
import 'package:flutter_shopper/pages/main_pages/more/views/more_screen.dart'
    as _i16;
import 'package:flutter_shopper/pages/main_pages/profile/views/profile_screen.dart'
    as _i17;
import 'package:flutter_shopper/pages/main_pages/search/views/search_screen.dart'
    as _i14;
import 'package:flutter_shopper/pages/onboard_page/view/first_screen.dart'
    as _i2;
import 'package:flutter_shopper/pages/onboard_page/view/forth_screen.dart'
    as _i5;
import 'package:flutter_shopper/pages/onboard_page/view/second_screen.dart'
    as _i3;
import 'package:flutter_shopper/pages/onboard_page/view/third_screen.dart'
    as _i4;
import 'package:flutter_shopper/pages/signin/views/signin_screen.dart' as _i8;
import 'package:flutter_shopper/pages/splash/splash_screen.dart' as _i1;
import 'package:flutter_shopper/pages/tabs_config/tab_controller.dart' as _i12;
import 'package:flutter_shopper/pages/verify_pin/views/verify_screen.dart'
    as _i10;
import 'package:flutter_shopper/pages/welcome/view/welcome_screen.dart' as _i6;

class RootRouter extends _i13.RootStackRouter {
  RootRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    FirstRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.FirstScreen());
    },
    SecondRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.SecondScreen());
    },
    ThirdRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.ThirdScreen());
    },
    ForthRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ForthScreen());
    },
    WelcomeRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.WelcomeScreen());
    },
    LoginRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.LoginScreen());
    },
    SignInRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.SignInScreen());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.ForgotPasswordScreen());
    },
    VerifyRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i10.VerifyScreen());
    },
    ConfirmPasswordRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i11.ConfirmPasswordScreen());
    },
    TabRoute.name: (routeData) {
      return _i13.AdaptivePage<String>(
          routeData: routeData, child: const _i12.TabScreen());
    },
    HomeTab.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i13.EmptyRouterPage());
    },
    SearchTap.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i14.SearchScreen());
    },
    ChartTab.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i15.ChartScreen());
    },
    MoreTab.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i16.MoreScreen());
    },
    ProfileTab.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i17.ProfileScreen());
    },
    HomeRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i18.HomeScreen());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i13.RouteConfig(SplashRoute.name, path: '/splash'),
        _i13.RouteConfig(FirstRoute.name, path: '/first'),
        _i13.RouteConfig(SecondRoute.name, path: '/second'),
        _i13.RouteConfig(ThirdRoute.name, path: '/third'),
        _i13.RouteConfig(ForthRoute.name, path: '/third'),
        _i13.RouteConfig(WelcomeRoute.name, path: '/welcome'),
        _i13.RouteConfig(LoginRoute.name, path: '/login'),
        _i13.RouteConfig(SignInRoute.name, path: '/signin'),
        _i13.RouteConfig(ForgotPasswordRoute.name, path: '/forgot'),
        _i13.RouteConfig(VerifyRoute.name, path: '/verify'),
        _i13.RouteConfig(ConfirmPasswordRoute.name, path: '/confirm_password'),
        _i13.RouteConfig(TabRoute.name, path: '/dashboard', children: [
          _i13.RouteConfig(HomeTab.name,
              path: 'Home',
              parent: TabRoute.name,
              children: [
                _i13.RouteConfig(HomeRoute.name, path: '', parent: HomeTab.name)
              ]),
          _i13.RouteConfig(SearchTap.name,
              path: 'search', parent: TabRoute.name),
          _i13.RouteConfig(ChartTab.name, path: 'chart', parent: TabRoute.name),
          _i13.RouteConfig(MoreTab.name, path: 'more', parent: TabRoute.name),
          _i13.RouteConfig(ProfileTab.name,
              path: 'profile', parent: TabRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.FirstScreen]
class FirstRoute extends _i13.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: '/first');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i3.SecondScreen]
class SecondRoute extends _i13.PageRouteInfo<void> {
  const SecondRoute() : super(SecondRoute.name, path: '/second');

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i4.ThirdScreen]
class ThirdRoute extends _i13.PageRouteInfo<void> {
  const ThirdRoute() : super(ThirdRoute.name, path: '/third');

  static const String name = 'ThirdRoute';
}

/// generated route for
/// [_i5.ForthScreen]
class ForthRoute extends _i13.PageRouteInfo<void> {
  const ForthRoute() : super(ForthRoute.name, path: '/third');

  static const String name = 'ForthRoute';
}

/// generated route for
/// [_i6.WelcomeScreen]
class WelcomeRoute extends _i13.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i7.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i8.SignInScreen]
class SignInRoute extends _i13.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signin');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i9.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i13.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: '/forgot');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i10.VerifyScreen]
class VerifyRoute extends _i13.PageRouteInfo<void> {
  const VerifyRoute() : super(VerifyRoute.name, path: '/verify');

  static const String name = 'VerifyRoute';
}

/// generated route for
/// [_i11.ConfirmPasswordScreen]
class ConfirmPasswordRoute extends _i13.PageRouteInfo<void> {
  const ConfirmPasswordRoute()
      : super(ConfirmPasswordRoute.name, path: '/confirm_password');

  static const String name = 'ConfirmPasswordRoute';
}

/// generated route for
/// [_i12.TabScreen]
class TabRoute extends _i13.PageRouteInfo<void> {
  const TabRoute({List<_i13.PageRouteInfo>? children})
      : super(TabRoute.name, path: '/dashboard', initialChildren: children);

  static const String name = 'TabRoute';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class HomeTab extends _i13.PageRouteInfo<void> {
  const HomeTab({List<_i13.PageRouteInfo>? children})
      : super(HomeTab.name, path: 'Home', initialChildren: children);

  static const String name = 'HomeTab';
}

/// generated route for
/// [_i14.SearchScreen]
class SearchTap extends _i13.PageRouteInfo<void> {
  const SearchTap() : super(SearchTap.name, path: 'search');

  static const String name = 'SearchTap';
}

/// generated route for
/// [_i15.ChartScreen]
class ChartTab extends _i13.PageRouteInfo<void> {
  const ChartTab() : super(ChartTab.name, path: 'chart');

  static const String name = 'ChartTab';
}

/// generated route for
/// [_i16.MoreScreen]
class MoreTab extends _i13.PageRouteInfo<void> {
  const MoreTab() : super(MoreTab.name, path: 'more');

  static const String name = 'MoreTab';
}

/// generated route for
/// [_i17.ProfileScreen]
class ProfileTab extends _i13.PageRouteInfo<void> {
  const ProfileTab() : super(ProfileTab.name, path: 'profile');

  static const String name = 'ProfileTab';
}

/// generated route for
/// [_i18.HomeScreen]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}
