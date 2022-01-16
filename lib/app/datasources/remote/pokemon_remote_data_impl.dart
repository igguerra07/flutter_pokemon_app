import 'package:pokemon_app/services/api/pokemon/pokemon_service.dart';
import 'package:pokemon_app/app/datasources/remote/pokemon_remote_data.dart';
import 'package:pokemon_app/app/models/pokemon_result_response_model.dart';

class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final PokemonService _apiService;

  PokemonRemoteDataSourceImpl(this._apiService);

  @override
  Future<PokemonResultResponseModel> getPokemons() => 
      _apiService.getPokemons();
}
