import 'package:equatable/equatable.dart';
import 'package:pokemon_app/app/entities/pokemon_entity.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  final List<PokemonEntity> pokemons;

  HomeSuccessState({required this.pokemons});

  @override
  List<Object?> get props => [pokemons];
}

class HomeFailureState extends HomeState {
  final bool hasError;

  HomeFailureState({required this.hasError});

  @override
  List<Object?> get props => [hasError];
}
