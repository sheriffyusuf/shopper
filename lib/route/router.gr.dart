// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter_shopper/pages/onboard_page/view/first_screen.dart'
    as _i2;
import 'package:flutter_shopper/pages/onboard_page/view/forth_screen.dart'
    as _i5;
import 'package:flutter_shopper/pages/onboard_page/view/second_screen.dart'
    as _i3;
import 'package:flutter_shopper/pages/onboard_page/view/third_screen.dart'
    as _i4;
import 'package:flutter_shopper/pages/splash/splash_screen.dart' as _i1;

class RootRouter extends _i6.RootStackRouter {
  RootRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    FirstRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.FirstScreen());
    },
    SecondRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.SecondScreen());
    },
    ThirdRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.ThirdScreen());
    },
    ForthRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ForthScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i6.RouteConfig(SplashRoute.name, path: '/splash'),
        _i6.RouteConfig(FirstRoute.name, path: '/first'),
        _i6.RouteConfig(SecondRoute.name, path: '/second'),
        _i6.RouteConfig(ThirdRoute.name, path: '/third'),
        _i6.RouteConfig(ForthRoute.name, path: '/third')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.FirstScreen]
class FirstRoute extends _i6.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: '/first');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i3.SecondScreen]
class SecondRoute extends _i6.PageRouteInfo<void> {
  const SecondRoute() : super(SecondRoute.name, path: '/second');

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i4.ThirdScreen]
class ThirdRoute extends _i6.PageRouteInfo<void> {
  const ThirdRoute() : super(ThirdRoute.name, path: '/third');

  static const String name = 'ThirdRoute';
}

/// generated route for
/// [_i5.ForthScreen]
class ForthRoute extends _i6.PageRouteInfo<void> {
  const ForthRoute() : super(ForthRoute.name, path: '/third');

  static const String name = 'ForthRoute';
}
