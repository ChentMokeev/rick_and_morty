import 'package:auto_route/auto_route.dart';
import 'package:rick_and_morty/screens/main_screen/main_screen.dart';
import 'package:rick_and_morty/screens/plug_in_screen/plug_in_screen.dart';
import 'package:rick_and_morty/screens/settings_screen/settings_screen.dart';

export 'package:auto_route/auto_route.dart';
export 'routes.gr.dart';
 
@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: SettingsScreen,
      path: '/settings_screen',
    ),
    AutoRoute(
      page: PlugInScreen,
      path: '/plug_in',
    ),
    AutoRoute(
      page: MainScreen,
      path: '/',
      initial: true,
    )
  ],
)

class $MobileAppRouter {}