import 'package:equatable/equatable.dart';
import 'package:pokemon_app/services/api/pokemon/pokemon_service.dart';


class PokemonEntity extends Equatable {
  final String name;
  final String url;

  const PokemonEntity({
    required this.url,
    required this.name,
  });

  String get id => url.replaceAll("/", " ").trim().split(" ").last;

  String get asset => ApiConstants.baseImgUrl + "$id.png";

  @override
  List<Object?> get props => [id, name];
}
