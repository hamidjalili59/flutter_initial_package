import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Application extends StatelessWidget {
  Application({super.key});

  final _appRouter = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: GeneralConstants.defaultDesignSize,
        minTextAdapt: true,
        builder: (_, __) {
          return MaterialApp.router(
            routerConfig: _appRouter.config(),
            // routerDelegate: _appRouter.delegate(),
            // routeInformationParser: _appRouter.defaultRouteParser(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
