import 'package:cours_flutter_rick_et_morty/model/episode.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EpisodesService {
  Future<List<Episode>> fetchEpisodes() async {
    final response =
    await http.get(Uri.parse('https://rickandmortyapi.com/api/episode'));

    // Si l'on a un HTTP 200, on parse la réponse de notre webservice
    if (response.statusCode == 200) {
      return parseEpisodes(response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }

  List<Episode> parseEpisodes(String responseBody) {
    final Map<String, dynamic> data = jsonDecode(responseBody);

    final List<dynamic> results = data['results'];

    List<Episode> episodes =
    results.map((jsonElement) => Episode.fromJson(jsonElement)).toList();

    return episodes;
  }
}