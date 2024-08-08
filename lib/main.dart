import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/injection/injection.dart';
import 'package:movies_app/core/routes/app_router.dart';

void main(List<String> args) {
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  MoviesApp({super.key});

  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'MoviesApp',
          routerDelegate: AutoRouterDelegate(router),
          routeInformationParser: router.defaultRouteParser(),
        );
      },
    );
  }
}
