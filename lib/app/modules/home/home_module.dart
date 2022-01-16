import 'package:injectable/injectable.dart';
import 'package:pokemon_app/app/di/injector.dart';
import 'package:pokemon_app/app/modules/home/cubit/home_cubit.dart';
import 'package:pokemon_app/app/repositories/pokemon_repository.dart';

@module
abstract class HomeModule {
  @injectable
  HomeCubit get homeCubit => HomeCubit(getIt<PokemonRepository>());
}
