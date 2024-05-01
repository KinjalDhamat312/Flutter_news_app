// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:flutter_demo/core/data/local/share_preference_util.dart'
    as _i12;
import 'package:flutter_demo/core/data/network/dio/dio_client.dart' as _i16;
import 'package:flutter_demo/core/data/network/interceptor/params_interceptor.dart'
    as _i5;
import 'package:flutter_demo/core/data/network/interceptor/token_expire_interceptor.dart'
    as _i4;
import 'package:flutter_demo/features/app/bloc/app_bloc.dart' as _i8;
import 'package:flutter_demo/features/news/data/datasources/local_datasource.dart'
    as _i6;
import 'package:flutter_demo/features/news/data/repositories/news_repository_imp.dart'
    as _i11;
import 'package:flutter_demo/features/news/domain/repositories/news_repository.dart'
    as _i10;
import 'package:flutter_demo/features/news/domain/usecases/get_news_usecase.dart'
    as _i13;
import 'package:flutter_demo/features/news/presentation/bloc/news_bloc.dart'
    as _i14;
import 'package:flutter_demo/injection/module/storage_module.dart' as _i15;
import 'package:flutter_demo/navigation/router_helper.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final localStorage = _$LocalStorage();
    final dioClient = _$DioClient();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => localStorage.sharePreferences,
      preResolve: true,
    );
    gh.factory<_i4.TokenExpireInterceptor>(() => _i4.TokenExpireInterceptor());
    gh.factory<_i5.ParamsInterceptor>(() => _i5.ParamsInterceptor());
    gh.factory<_i6.NewsLocalDataSource>(() => _i6.NewsLocalDataSource());
    gh.singleton<_i7.Dio>(() => dioClient.dio);
    gh.singleton<_i8.AppBloc>(() => _i8.AppBloc());
    gh.singleton<_i9.NavigationHelper>(() => _i9.NavigationHelper());
    gh.factory<_i10.NewsRepository>(
        () => _i11.NewsRepositoryImp(gh<_i6.NewsLocalDataSource>()));
    gh.singleton<_i12.SharePreferencesUtil>(
        () => _i12.SharePreferencesUtilImp(gh<_i3.SharedPreferences>()));
    gh.factory<_i13.GetNewsUseCase>(
        () => _i13.GetNewsUseCase(gh<_i10.NewsRepository>()));
    gh.factory<_i14.NewsBloc>(() => _i14.NewsBloc(gh<_i13.GetNewsUseCase>()));
    return this;
  }
}

class _$LocalStorage extends _i15.LocalStorage {}

class _$DioClient extends _i16.DioClient {}
