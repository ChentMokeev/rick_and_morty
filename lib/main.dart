import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/routes/routes.dart';
import 'package:rick_and_morty/widgets/app_unfocuser.dart';

import 'bloc/character_bloc.dart';
import 'data/character_repo.dart';
import 'data/dio_settings.dart';

part './widgets/init_widget.dart';

void main() => runApp(const MyApp());

final appRouter = MobileAppRouter();

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: AppUnfocuser(
        child: MaterialApp.router(
          themeMode: ThemeMode.system,
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: appRouter.delegate(),
          routeInformationProvider: appRouter.routeInfoProvider(),
        ),
      ),
    );
  }
}