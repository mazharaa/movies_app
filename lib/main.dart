import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/application/auth/auth_cubit.dart';
import 'package:movies_app/application/fav_watchlist/fav_watchlist_cubit.dart';
import 'package:movies_app/application/nav_bar/nav_bar_cubit.dart';
import 'package:movies_app/core/common/app_theme.dart';
import 'package:movies_app/core/injection/injection.dart';
import 'package:movies_app/core/routes/app_router.dart';
import 'package:movies_app/infrastructure/storage/secure_storage_controller.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  configuredInjection();
  SecureStorageController.init();
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  MoviesApp({super.key});

  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavBarCubit(),
        ),
        BlocProvider(
          create: (context) => FavWatchlistCubit(),
        ),
        BlocProvider(create: (context) => getIt<AuthCubit>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp.router(
            title: 'MoviesApp',
            theme: AppTheme.theme,
            routerDelegate: AutoRouterDelegate(router),
            routeInformationParser: router.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
