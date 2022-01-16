import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/app/di/injector.dart';
import 'package:pokemon_app/services/services.dart';
import 'package:pokemon_app/app/datasources/datasources.dart';
import 'package:pokemon_app/app/repositories/repositories.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  ApiClient get apiClient => DioClient(getIt<Dio>(), ApiConstants.baseUrl);
  
  @lazySingleton
  PokemonService get pokemonService => PokemonV2(getIt<ApiClient>());
 
  @lazySingleton
  PokemonRemoteDataSource get remoteDataSource =>
      PokemonRemoteDataSourceImpl(getIt<PokemonService>());
  
  @lazySingleton
  PokemonRepository get repository =>
      PokemonRepositoryImpl(getIt<PokemonRemoteDataSource>());
}
