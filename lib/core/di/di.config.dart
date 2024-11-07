// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:demo_login_logout/core/network/network_module.dart';
import 'package:demo_login_logout/core/service/authentication_interceptor.dart';
import 'package:demo_login_logout/core/service/authentication_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// initializes the registration of main-scope dependencies inside of GetIt
GetIt $initGetIt(GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) {
  final gh = GetItHelper(getIt, environment, environmentFilter,);

  final networkModule = _$NetworkModule();

  gh.singleton(() => AuthenticationInterceptor(getIt<AuthenticationService>()));

  gh.singleton(() => AuthenticationService(getIt<Dio>()));

  gh.lazySingleton(() => networkModule.dio(getIt<AuthenticationInterceptor>()));



  return getIt;
}

class _$NetworkModule extends NetworkModule {}

