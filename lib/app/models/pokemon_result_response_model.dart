import 'package:pokemon_app/app/models/pokemon_result_item_model.dart';

class PokemonResultResponseModel {
  final int count;
  final String? next;
  final String? previous;
  final List<PokemonResultItemModel> results;

  PokemonResultResponseModel({
    this.next = "",
    this.previous = "",
    required this.count,
    required this.results,
  });

  PokemonResultResponseModel.fromJson(Map<String, dynamic> json)
      : next = json["next"],
        count = json["count"],
        previous = json["previous"],
        results = List.from((json["results"] as List).map((jsonItem) =>
            PokemonResultItemModel.fromJson(jsonItem)));

  Map<String, dynamic> toJson() => {
        "next": next,
        "count": count,
        "result": results,
        "previous": previous,
      };
}
