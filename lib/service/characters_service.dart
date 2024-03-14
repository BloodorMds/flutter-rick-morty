import 'package:cours_flutter_rick_et_morty/model/character.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CharactersService {
  Future<List<Character>> fetchCharacters() async {
    final response =
    await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    // Si l'on a un HTTP 200, on parse la réponse de notre webservice
    if (response.statusCode == 200) {
      return parseCharacters(response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }

  List<Character> parseCharacters(String responseBody) {
    final Map<String, dynamic> data = jsonDecode(responseBody);

    final List<dynamic> results = data['results'];

    List<Character> characters =
    results.map((jsonElement) => Character.fromJson(jsonElement)).toList();

    return characters;
  }
}