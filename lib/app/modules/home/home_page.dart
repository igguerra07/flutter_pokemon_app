import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/app/di/injector.dart';
import 'package:pokemon_app/app/entities/entities.dart';
import 'package:pokemon_app/app/modules/home/home.dart';

class HomePage extends StatelessWidget {
  final HomeCubit _homeCubit = getIt();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          bloc: _homeCubit..getPokemons(),
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is HomeSuccessState) {
              return _buildContent(state.pokemons);
            }
            if (state is HomeFailureState) {
              return const Center(
                child: Text("Response error"),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  Widget _buildContent(List<PokemonEntity> pokemons) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const HomeTitle(title: "Pokedex"),
        Expanded(
            child: PokemonGridView(
          pokemons: pokemons,
          onSelectPokemon: () => {},
        ),
        ),
      ],
    );
  }
}
