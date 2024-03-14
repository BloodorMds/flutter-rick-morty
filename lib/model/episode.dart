class Episode {
  final String episode;
  final String name;
  final String air_date;

  Episode(
      {required this.episode,
      required this.name,
      required this.air_date});

  Episode.fromJson(Map<String, dynamic> json)
      : episode = json["episode"] as String,
        name = json["name"] as String,
        air_date = json["air_date"] as String;
}
