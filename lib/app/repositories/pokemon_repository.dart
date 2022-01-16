import 'package:dartz/dartz.dart';
import 'package:pokemon_app/app/models/pokemon_result_response_model.dart';

abstract class PokemonRepository {
  Future<Either<bool, PokemonResultResponseModel>> getPokemons();
}