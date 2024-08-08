// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:movies_app/core/env/env.dart' as _i415;
import 'package:movies_app/core/routes/app_router.dart' as _i387;
import 'package:movies_app/core/utils/register_module.dart' as _i525;
import 'package:movies_app/domain/home/i_home_repository.dart' as _i1028;
import 'package:movies_app/infrastructure/core/api_helper.dart' as _i725;
import 'package:movies_app/infrastructure/home/data_sources/home_data_sources.dart'
    as _i651;
import 'package:movies_app/infrastructure/home/repository/home_repository.dart'
    as _i560;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i415.Env>(() => _i415.Env());
    gh.singleton<_i387.AppRouter>(() => registerModule.appRouter);
    gh.factory<_i361.Dio>(() => registerModule.dio(gh<_i415.Env>()));
    gh.lazySingleton<_i725.ApiHelper>(() => _i725.ApiHelper(gh<_i361.Dio>()));
    gh.factory<_i651.HomeDataSources>(
        () => _i651.HomeDataSources(gh<_i725.ApiHelper>()));
    gh.lazySingleton<_i1028.IHomeRepository>(
        () => _i560.HomeRepository(gh<_i651.HomeDataSources>()));
    return this;
  }
}

class _$RegisterModule extends _i525.RegisterModule {}
