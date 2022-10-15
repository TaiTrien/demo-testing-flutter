import 'package:flutter_test/flutter_test.dart';
import 'package:testing_demo/models/pokedex.dart';

void main() {
  group('Pokedex model', () {
    test('creates instance successfully', () {
      final pokedex = Pokedex(name: 'Charmander', url: Uri.parse('https://pokeapi.co/api/v2/pokemon/4/'));
      expect(pokedex, isA<Pokedex>());
    });
    test('parse from Json successfully', () {
      final parsedPokedex = Pokedex.fromJson({
        "name": "Charmander",
        "url": "https://pokeapi.co/api/v2/pokemon/4/",
      });
      expect(parsedPokedex, isA<Pokedex>());
    });
    test('convert to JSON', () {
      final pokedex = Pokedex(name: 'Charmander', url: Uri.parse('https://pokeapi.co/api/v2/pokemon/4/'));
      expect(pokedex.toJson(), isA<Map<String, dynamic>>());
    });
  });
}
