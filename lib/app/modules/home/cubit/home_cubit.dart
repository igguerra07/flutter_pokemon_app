import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/app/modules/home/cubit/home_state.dart';
import 'package:pokemon_app/app/repositories/pokemon_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  final PokemonRepository _repository;

  HomeCubit(this._repository) : super(HomeInitialState());

  Future<void> getPokemons() async {
    emit(HomeLoadingState());

    final eitherResponse = await _repository.getPokemons();

    eitherResponse.fold(
      (hasError) => emit(HomeFailureState(hasError: hasError)), 
      (response) => emit(HomeSuccessState(pokemons: response.results)),
    );
  }
}
