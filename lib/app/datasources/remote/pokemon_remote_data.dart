import 'package:pokemon_app/app/models/pokemon_result_response_model.dart';

abstract class PokemonRemoteDataSource {
  Future<PokemonResultResponseModel> getPokemons();
}
