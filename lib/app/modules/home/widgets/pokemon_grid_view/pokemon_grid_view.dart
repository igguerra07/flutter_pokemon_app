import 'package:flutter/material.dart';
import 'package:pokemon_app/app/entities/pokemon_entity.dart';
import 'package:pokemon_app/app/modules/home/widgets/widgets.dart';

class PokemonGridView extends StatelessWidget {
  final List<PokemonEntity> pokemons;
  final VoidCallback onSelectPokemon;

  const PokemonGridView({
    Key? key,
    required this.pokemons,
    required this.onSelectPokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 1.23,
      shrinkWrap: true,
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16),
      children: List.generate(
        pokemons.length,
        (index) => PokemonItem(
          onTap: onSelectPokemon,
          id: pokemons[index].id,
          name: pokemons[index].name,
          imgSrc: pokemons[index].asset,
        ),
      ),
    );
  }
}
