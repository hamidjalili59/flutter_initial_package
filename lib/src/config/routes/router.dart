import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/presentations/splash/pages/splash_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = <AutoRoute>[
    AutoRoute(
      path: "/",
      page: Splash.page,
    ),
  ];
}
