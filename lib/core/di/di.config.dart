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

import '../config/i_config.dart' as _i978;
import '../network/network_module.dart' as _i200;
import '../service/authentication_interceptor.dart' as _i1020;
import '../service/authentication_service.dart' as _i719;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  gh.factory<_i978.IConfig>(() => _i978.AppConfig());
  gh.singleton<_i361.Dio>(() => networkModule.dio(gh<_i978.IConfig>()));
  gh.singleton<_i719.AuthenticationService>(
      () => _i719.AuthenticationService(gh<_i361.Dio>()));
  gh.singleton<_i1020.AuthenticationInterceptor>(() =>
      _i1020.AuthenticationInterceptor(gh<_i719.AuthenticationService>()));
  return getIt;
}

class _$NetworkModule extends _i200.NetworkModule {}
