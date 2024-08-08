import 'package:auto_route/auto_route.dart';
import 'package:movies_app/presentation/screen/details_screen.dart';
import 'package:movies_app/presentation/screen/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
      ];
}
