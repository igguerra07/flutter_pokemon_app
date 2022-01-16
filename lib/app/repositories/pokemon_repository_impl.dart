import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/app/datasources/remote/pokemon_remote_data.dart';
import 'package:pokemon_app/app/models/pokemon_result_response_model.dart';
import 'package:pokemon_app/app/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource _remoteDataSource;

  PokemonRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<bool, PokemonResultResponseModel>> getPokemons() async {
    try {
      final response = await _remoteDataSource.getPokemons();
      return right(response);
    } on DioError catch (e) {
      debugPrint(e.message);
      debugPrint(e.stackTrace.toString());
      return left(false);
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      return left(false);
    }
  }
}
