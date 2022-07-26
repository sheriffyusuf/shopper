// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_shopper/pages/onboard_page/view/first_screen.dart'
    as _i2;
import 'package:flutter_shopper/pages/onboard_page/view/forth_screen.dart'
    as _i5;
import 'package:flutter_shopper/pages/onboard_page/view/second_screen.dart'
    as _i3;
import 'package:flutter_shopper/pages/onboard_page/view/third_screen.dart'
    as _i4;
import 'package:flutter_shopper/pages/splash/splash_screen.dart' as _i1;
import 'package:flutter_shopper/pages/welcome/view/welcome_screen.dart' as _i6;

class RootRouter extends _i7.RootStackRouter {
  RootRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    FirstRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.FirstScreen());
    },
    SecondRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.SecondScreen());
    },
    ThirdRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.ThirdScreen());
    },
    ForthRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ForthScreen());
    },
    WelcomeRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.WelcomeScreen());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i7.RouteConfig(SplashRoute.name, path: '/splash'),
        _i7.RouteConfig(FirstRoute.name, path: '/first'),
        _i7.RouteConfig(SecondRoute.name, path: '/second'),
        _i7.RouteConfig(ThirdRoute.name, path: '/third'),
        _i7.RouteConfig(ForthRoute.name, path: '/third'),
        _i7.RouteConfig(WelcomeRoute.name, path: '/welcome')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.FirstScreen]
class FirstRoute extends _i7.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: '/first');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i3.SecondScreen]
class SecondRoute extends _i7.PageRouteInfo<void> {
  const SecondRoute() : super(SecondRoute.name, path: '/second');

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i4.ThirdScreen]
class ThirdRoute extends _i7.PageRouteInfo<void> {
  const ThirdRoute() : super(ThirdRoute.name, path: '/third');

  static const String name = 'ThirdRoute';
}

/// generated route for
/// [_i5.ForthScreen]
class ForthRoute extends _i7.PageRouteInfo<void> {
  const ForthRoute() : super(ForthRoute.name, path: '/third');

  static const String name = 'ForthRoute';
}

/// generated route for
/// [_i6.WelcomeScreen]
class WelcomeRoute extends _i7.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome');

  static const String name = 'WelcomeRoute';
}
