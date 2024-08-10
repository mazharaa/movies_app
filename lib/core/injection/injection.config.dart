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
import 'package:movies_app/application/details/details_cubit.dart' as _i537;
import 'package:movies_app/application/home/home_cubit.dart' as _i94;
import 'package:movies_app/core/env/env.dart' as _i415;
import 'package:movies_app/core/routes/app_router.dart' as _i387;
import 'package:movies_app/core/utils/register_module.dart' as _i525;
import 'package:movies_app/domain/details/i_details_repository.dart' as _i164;
import 'package:movies_app/domain/home/i_home_repository.dart' as _i1028;
import 'package:movies_app/infrastructure/core/api_helper.dart' as _i725;
import 'package:movies_app/infrastructure/details/data_sources/details_data_sources.dart'
    as _i346;
import 'package:movies_app/infrastructure/details/repository/details_repository.dart'
    as _i88;
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
    gh.factory<_i346.DetailsDataSources>(
        () => _i346.DetailsDataSources(gh<_i725.ApiHelper>()));
    gh.lazySingleton<_i164.IDetailsRepository>(
        () => _i88.DetailsRepository(gh<_i346.DetailsDataSources>()));
    gh.lazySingleton<_i1028.IHomeRepository>(
        () => _i560.HomeRepository(gh<_i651.HomeDataSources>()));
    gh.factory<_i537.DetailsCubit>(() => _i537.DetailsCubit(
          gh<_i164.IDetailsRepository>(),
          gh<int>(),
        ));
    gh.factory<_i94.HomeCubit>(
        () => _i94.HomeCubit(gh<_i1028.IHomeRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i525.RegisterModule {}
