import 'package:pokemon_app/app/entities/pokemon_entity.dart';

class PokemonResultItemModel extends PokemonEntity {

  final String url;
  final String name;

  const PokemonResultItemModel({

    required this.url,
    required this.name,
  }) : super(name: name, url: url);

  factory PokemonResultItemModel.fromJson(
      Map<String, dynamic> json) {
    return PokemonResultItemModel(
      url: json["url"],
      name: json["name"],
    );
  }

  Map<String, dynamic> toJson() => {
        "url": url,
        "name": name,
      };
}
