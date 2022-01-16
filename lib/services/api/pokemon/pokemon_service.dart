import 'package:pokemon_app/app/models/pokemon_result_response_model.dart';

class ApiConstants {
  static const String baseUrl = "https://pokeapi.co/api/v2";
  static const String getPokemons = "/pokemon";
  static const String baseImgUrl =
      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/";
}

abstract class PokemonService {
  Future<PokemonResultResponseModel> getPokemons();
}
