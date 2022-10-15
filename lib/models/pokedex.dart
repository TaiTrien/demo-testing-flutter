import 'dart:convert';

List<Pokedex> pokedexFromJson(String str) => List<Pokedex>.from(json.decode(str).map((x) => Pokedex.fromJson(x)));

String pokedexToJson(List<Pokedex> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pokedex {
  Pokedex({
    required this.name,
    required this.url,
  });

  String name;
  Uri url;

  factory Pokedex.fromJson(Map<String, dynamic> json) => Pokedex(
        name: json["name"],
        url: Uri.parse(json["url"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
