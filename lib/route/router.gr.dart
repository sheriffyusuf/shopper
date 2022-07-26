// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_shopper/pages/onboard_page/view/first_screen.dart'
    as _i2;
import 'package:flutter_shopper/pages/splash/splash_screen.dart' as _i1;

class RootRouter extends _i3.RootStackRouter {
  RootRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    FirstRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.FirstScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i3.RouteConfig(SplashRoute.name, path: '/splash'),
        _i3.RouteConfig(FirstRoute.name, path: '/first')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i3.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.FirstScreen]
class FirstRoute extends _i3.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: '/first');

  static const String name = 'FirstRoute';
}
