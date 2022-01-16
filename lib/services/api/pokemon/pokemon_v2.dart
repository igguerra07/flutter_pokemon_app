import 'dart:convert';
import 'package:pokemon_app/app/models/models.dart';
import 'package:pokemon_app/services/services.dart';

class PokemonV2 implements PokemonService {
  final ApiClient _apiClient;

  PokemonV2(this._apiClient);

  @override
  Future<PokemonResultResponseModel> getPokemons() async {
    final response = await _apiClient.get(
      path: ApiConstants.getPokemons,
      queryParams: { "limit": "151" }
    );
    final data = json.decode(response);
    return PokemonResultResponseModel.fromJson(data);
  }
}
