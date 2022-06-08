// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../screens/main_screen/main_screen.dart' as _i3;
import '../screens/plug_in_screen/plug_in_screen.dart' as _i2;
import '../screens/settings_screen/settings_screen.dart' as _i1;

class MobileAppRouter extends _i4.RootStackRouter {
  MobileAppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SettingsScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SettingsScreen());
    },
    PlugInScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PlugInScreen());
    },
    MainScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MainScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SettingsScreenRoute.name, path: '/settings_screen'),
        _i4.RouteConfig(PlugInScreenRoute.name, path: '/plug_in'),
        _i4.RouteConfig(MainScreenRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.SettingsScreen]
class SettingsScreenRoute extends _i4.PageRouteInfo<void> {
  const SettingsScreenRoute()
      : super(SettingsScreenRoute.name, path: '/settings_screen');

  static const String name = 'SettingsScreenRoute';
}

/// generated route for
/// [_i2.PlugInScreen]
class PlugInScreenRoute extends _i4.PageRouteInfo<void> {
  const PlugInScreenRoute() : super(PlugInScreenRoute.name, path: '/plug_in');

  static const String name = 'PlugInScreenRoute';
}

/// generated route for
/// [_i3.MainScreen]
class MainScreenRoute extends _i4.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '/');

  static const String name = 'MainScreenRoute';
}
