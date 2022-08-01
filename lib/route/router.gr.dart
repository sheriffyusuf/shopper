// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter_shopper/pages/change_password/views/confirm_password_screen.dart'
    as _i11;
import 'package:flutter_shopper/pages/forgot_password/views/forgot_screen.dart'
    as _i9;
import 'package:flutter_shopper/pages/login/view/login_screen.dart' as _i7;
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
import 'package:flutter_shopper/pages/verify_pin/views/verify_screen.dart'
    as _i10;
import 'package:flutter_shopper/pages/welcome/view/welcome_screen.dart' as _i6;

class RootRouter extends _i12.RootStackRouter {
  RootRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    FirstRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.FirstScreen());
    },
    SecondRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.SecondScreen());
    },
    ThirdRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.ThirdScreen());
    },
    ForthRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ForthScreen());
    },
    WelcomeRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.WelcomeScreen());
    },
    LoginRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.LoginScreen());
    },
    SignInRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.SignInScreen());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.ForgotPasswordScreen());
    },
    VerifyRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i10.VerifyScreen());
    },
    ConfirmPasswordRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i11.ConfirmPasswordScreen());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i12.RouteConfig(SplashRoute.name, path: '/splash'),
        _i12.RouteConfig(FirstRoute.name, path: '/first'),
        _i12.RouteConfig(SecondRoute.name, path: '/second'),
        _i12.RouteConfig(ThirdRoute.name, path: '/third'),
        _i12.RouteConfig(ForthRoute.name, path: '/third'),
        _i12.RouteConfig(WelcomeRoute.name, path: '/welcome'),
        _i12.RouteConfig(LoginRoute.name, path: '/login'),
        _i12.RouteConfig(SignInRoute.name, path: '/signin'),
        _i12.RouteConfig(ForgotPasswordRoute.name, path: '/forgot'),
        _i12.RouteConfig(VerifyRoute.name, path: '/verify'),
        _i12.RouteConfig(ConfirmPasswordRoute.name, path: '/confirm_password')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.FirstScreen]
class FirstRoute extends _i12.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: '/first');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i3.SecondScreen]
class SecondRoute extends _i12.PageRouteInfo<void> {
  const SecondRoute() : super(SecondRoute.name, path: '/second');

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i4.ThirdScreen]
class ThirdRoute extends _i12.PageRouteInfo<void> {
  const ThirdRoute() : super(ThirdRoute.name, path: '/third');

  static const String name = 'ThirdRoute';
}

/// generated route for
/// [_i5.ForthScreen]
class ForthRoute extends _i12.PageRouteInfo<void> {
  const ForthRoute() : super(ForthRoute.name, path: '/third');

  static const String name = 'ForthRoute';
}

/// generated route for
/// [_i6.WelcomeScreen]
class WelcomeRoute extends _i12.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i7.LoginScreen]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i8.SignInScreen]
class SignInRoute extends _i12.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signin');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i9.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i12.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: '/forgot');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i10.VerifyScreen]
class VerifyRoute extends _i12.PageRouteInfo<void> {
  const VerifyRoute() : super(VerifyRoute.name, path: '/verify');

  static const String name = 'VerifyRoute';
}

/// generated route for
/// [_i11.ConfirmPasswordScreen]
class ConfirmPasswordRoute extends _i12.PageRouteInfo<void> {
  const ConfirmPasswordRoute()
      : super(ConfirmPasswordRoute.name, path: '/confirm_password');

  static const String name = 'ConfirmPasswordRoute';
}
